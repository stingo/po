class PostsController < ApplicationController



    
    before_action :set_post, only: [:show, :edit, :update, :destroy, :repost]

      impressionist :actions=>[:show,:index]


    #def index before scroll paginate
        #@posts = Post.all.order('created_at DESC')
        #@newPost = Post.new
    #end

    def index

      @newPost = Post.new

     

      if params[:postcategory].blank?
      #@posts = Post.all.order("created_at DESC")
       @posts = Post.paginate(:page => params[:page]).order("created_at DESC") # replaces Post.all

    else
      @postcategory_id = Postcategory.find_by(name: params[:postcategory]).id
      @posts = Post.where(postcategory_id: @postcategory_id).order("created_at DESC").paginate(:page => params[:page])
    end




    #@posts = Post.paginate(:page => params[:page]) # replaces Post.all
    #@newPost = Post.new
    respond_to do |format|
      format.html
      format.js # add this line for your js template
    end
    end

 


    def new 
        @post = Post.new
    end
    
    def create
        @post = Post.new(post_params)
        @post.user_id = current_user.id # assign the post to the user who created it.
        respond_to do |f|
            if (@post.save) 
                f.html { redirect_to posts_path, notice: "Post created!" }
            else
                f.html { redirect_to posts_path, notice: "Error: Couldn't create post with no text." }
            end
        end
    end

    def show
    	impressionist(@post)
    	@post = Post.find(params[:id])
        #impressionist(@post)



         @newPost = Post.new
    

    end

 def destroy
 post = Post.find(params[:id])


 @post.destroy
 respond_to do |format|
 format.html { redirect_to posts_path, notice: 'Post was successfully destroyed.' }
 format.json { head :no_content }
 
 end
 end
     

#def remove_postcover
#@remember_id = @postcover.id
#@postcover.destroy
#Delete empty folder from app.
#FileUtils.remove_dir("#{Rails.root}/path_to/file/#{@remember_id}")
#respond_to do |format|
#format.html { redirect_to images_url, notice: 'Image was successfully destroyed.' }
#format.json { head :no_content }
#end
#end






def edit

    @post = Post.find(params[:id])
    


  end

   def update
    @post = Post.find(params[:id])
  
    
    if @post.update_attributes(post_params)

        flash[:notice] = "Post succesfully updated!"
        redirect_to posts_path
      # Handle a successful update.
    else
      render :action => :edit
    end
  end

  

  def repost
    post = current_user.posts.new(post_id: @post.id)
    if post.save
      redirect_to posts_path
    else
      redirect_to :back, alert: "Unable to repost"
    end
  end


    
    
    private

    def set_post
      @post = Post.find(params[:id])
    end

    def content_or_postcover
  if content.blank? && postcover.blank?
    errors[:base] << "Specify postcover, content or Both."
  end
end

    def post_params # allows certain data to be passed via form.
        params.require(:post).permit(:user_id, :post_id, :content, :postcover, :remove_postcover, :postcategory_id)
        
    end


end
