# frozen_string_literal: true

class SessionController < ApplicationController
  def create
    @curent_user ||= User.find(params[:id])
    cookies.permanent[:user_id] = params[:id]
  end

  def new; end

  def destroy; end
end
