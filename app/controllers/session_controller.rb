# frozen_string_literal: true

class SessionController < ApplicationController
  def create
    login(params[:id])

    if is_logged?
      cookies.permanent[:user_id] = params[:id]
      redirect_to profile_path
    else
      redirect_to login_path
    end
  end

  def new; end

  def destroy; end
end
