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
  
  def check_signed_out
      if user_signed_in?
        flash[:error] = "Already signed in!"
        redirect_to root_path
        return
      end
    end
    
  def check_signed_in
    if not user_signed_in?
      flash[:error] = "You need to sign in for this!"
      redirect_to login_path
      return
    end
  end
end
