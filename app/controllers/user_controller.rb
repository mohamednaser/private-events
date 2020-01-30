# frozen_string_literal: true

class UserController < ApplicationController
  # will be post method
  def create
    User.create(user_params)
  end

  def new
    @user = User.new
  end

  def show; end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end
end
