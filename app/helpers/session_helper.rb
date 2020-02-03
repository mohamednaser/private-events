# Session Helper
module SessionHelper
  def curent_user
    @curent_user ||= User.find(cookies[:user_id])
  end

  def login(id)
    @curent_user ||= User.find(id)
  end

  def logged
    !@curent_user.nil?
  end

  def logout
    @curent_user = nil
    cookies.permanent[:user_id] = nil
  end
end
