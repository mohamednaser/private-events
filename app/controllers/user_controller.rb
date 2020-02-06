# user controller
class UserController < ApplicationController
  # will be post method
  def create

    @user = User.create(user_params)
    if @user.save 
      redirect_to login_path, notice: "signup success your id is #{@user.id}"  
    end 
  end

  def new
    @user = User.new
  end

  def show
    curent_user
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end
end
