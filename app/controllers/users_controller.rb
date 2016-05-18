class UsersController < ApplicationController


		before_action :authenticate_user!, :except => [:index, :show]
	
  

  def index
  	@users = User.all
  end

  def show
  
     @user = User.friendly.find(params[:id])
     
     #@user_posts = @user.posts
 
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



private

   def set_user
       @user = User.friendly.find(params[:id])
    end
   

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:userphoto, :usercover, :bio, :country, :firstname, :lastname, :city, :displayname)
    end

  end


