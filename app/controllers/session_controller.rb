# Session Controller
class SessionController < ApplicationController
  def create
    login(params[:id])

    if logged
      cookies.permanent[:user_id] = params[:id]
      redirect_to profile_path
    else
      redirect_to signup_path, notice: 'error in id'
    end
  end

  def new; end

  def destroy
    logout
    redirect_to login_path
  end
end
