class PostcommentsController < ApplicationController
  before_action :set_postcomment, only: [:show, :edit, :update, :destroy]

  # GET /postcomments
  # GET /postcomments.json
  def index
    @postcomments = Postcomment.all
  end

  # GET /postcomments/1
  # GET /postcomments/1.json
  def show
  end

  # GET /postcomments/new
  #def new
    #@postcomment = Postcomment.new
  #end

  # GET /postcomments/1/edit
  def edit
  end

  # POST /postcomments
  # POST /postcomments.json
  def create
    #@postcomment = Postcomment.new(postcomment_params)
     @post = Post.find(params[:post_id])


    @postcomment = @post.postcomments.new(postcomment_params)
    @postcomment.user = current_user

    respond_to do |format|
      if @postcomment.save
        format.html { redirect_to @post, notice: 'Comment was successfully created.' }
        format.json { render json: @postcomment, status: :created, location: @postcomment }
      else
        format.html { render action: "new" }
        format.json { render json: @postcomment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /postcomments/1
  # PATCH/PUT /postcomments/1.json
   def update
    @postcomment.update(postcomment_params)
    respond_to do |format|
      format.html { redirect_to :back, notice: 'Comment was successfully updated.' }
      format.json { head :no_content }
    end
  end

  #def destroy
    #@comment.destroy
    #respond_with(@comment)
  #end
  def destroy
    @postcomment.destroy
    respond_to do |format|
      format.html { redirect_to :back, notice: 'Comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_postcomment
      @postcomment = Comment.find(params[:id])


    end

    # Never trust parameters from the scary internet, only allow the white list through.

    def postcomment_params
      params.require(:postcomment).permit(:post_id, :body, :user_id )
    end
end


    