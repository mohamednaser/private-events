# frozen_string_literal: true

# user controller
class UserController < ApplicationController
  # will be post method
  def create
    User.create(user_params)
  end

  def new; end

  def show
    curent_user
  end

  private

  def user_params
    params.require(:user).permit(:id)
  end
end
