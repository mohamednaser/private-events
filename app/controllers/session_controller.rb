# frozen_string_literal: true

# Session Controller
class SessionController < ApplicationController
  def create
    login(params[:id])

    if logged
      cookies.permanent[:user_id] = params[:id]
      redirect_to profile_path
    else
      redirect_to login_path
    end
  end

  def new; end

  def destroy; end
end
