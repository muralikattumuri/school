class UsersController < ApplicationController
	
  before_action :authenticate_user!
  before_action :principal_only, :except => :show
  

  def index
   @users = User.all
  
  #  raise @users.to_yaml
  end

  def show

    @user = User.find(params[:id])
    @marks = Mark.where(user_id: params[:id])
  
  #  @total =  Mark.total
  #  raise @total.to_yaml
  
  
      end
    def edit
      @user = User.find(params[:id])
    @marks = Mark.where(user_id: params[:id])
 
    end


  def update
    @user = User.find(params[:id])
    if @user.update_attributes(secure_params)
      redirect_to users_path, :notice => "User updated."
    else
      redirect_to users_path, :alert => "Unable to update user."
    end
  end


  def destroy
    user = User.find(params[:id])
    user.destroy
    redirect_to students_path, :notice => "User deleted."
  end

  private

  def principal_only
    unless current_user.principal?  || current_user.faculty?
      redirect_to root_path, :alert => "Access denied."
    end
  end

  def secure_params
    params.require(:user).permit(:role)
  end
 

end
