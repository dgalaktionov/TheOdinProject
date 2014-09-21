class SessionController < ApplicationController
include ApplicationHelper
before_action :check_signed_out, only: [:new, :create]

  def new
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
