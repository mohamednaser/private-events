# Session Helper
module SessionHelper
  def curent_user
    @curent_user ||= User.find(cookies[:user_id])
  rescue ActiveRecord::RecordNotFound
    @curent_user = nil
    nil
  end

  def login(id)
    @curent_user ||= User.find(id)
  rescue ActiveRecord::RecordNotFound
    @curent_user = nil
    nil
  end

  def logged
    !@curent_user.nil?
  end

  def logout
    @curent_user = nil
    cookies.permanent[:user_id] = nil
  end
end
