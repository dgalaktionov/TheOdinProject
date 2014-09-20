module ApplicationHelper
  def user_signed_in?
    session[:id] != nil
  end
  
  def current_user
    if session[:id]
      User.find(session[:id])
    else
      nil
    end
  end
end
