# frozen_string_literal: true

module SessionHelper
  def curent_user
    @curent_user ||= User.find(cookies[:user_id])
  end

  def login(id)
    @curent_user ||= User.find(id)
  end

  def is_logged?
    !@curent_user.nil?
  end

  
end
