class SessionController < ApplicationController
include ApplicationHelper

  def new
    if user_signed_in?
      flash[:error] = "Already signed in!"
      redirect_to root_path
      return
    end
  end

  def create
    id = params[:id]
    
    if User.exists?(id)
      session[:id] = id
      redirect_to root_path
    else
      flash.now[:error] = "User #{id} does not exist."
      render :new
    end
  end

  def destroy
    session.delete(:id)
    redirect_to root_path
  end
end
