class UsersController < ApplicationController

  impressionist :actions=>[:show,:index]


		before_action :authenticate_user!, :except => [:index, :show]
    before_action :set_user, only: [:show, :edit, :update]
	
  

  def index
  	@users = User.all



  end

  def show

    @newPost = Post.new
  
     @user = User.friendly.find(params[:id])
     
     @user_posts = @user.posts.order("created_at DESC") #important! to enable users posts on user profile
     @user_likes = @user.likes #important! to enable users posts on user profile
 
    if request.path != user_path(@user)
    redirect_to @user, status: :moved_permanently
     else
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
    end
  end

  end
  


  def edit

    @user = User.friendly.find(params[:id])
  
  end



   def update
    @user = User.friendly.find(params[:id])
    if @user.update_attributes(user_params)
    	flash[:notice] = "You updated your profile!"
    	redirect_to user_path
      # Handle a successful update.
    else
      render :action => :edit
    end
   
   end

   def upvote
    @user.upvote_by current_user
    redirect_to :back
     
   end



private

   def set_user
       @user = User.friendly.find(params[:id])
    end

    def content_or_postcover
  if content.blank? && postcover.blank?
    errors[:base] << "Specify postcover, content or Both."
  end
end
   

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:userphoto, :usercover, :remove_userphoto, :remove_usercover, :bio, :country, :firstname, :lastname, :city, :displayname)
    end

  end


