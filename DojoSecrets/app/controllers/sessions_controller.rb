class SessionsController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]


  def new
    #shows login page
  end

  def create
    #authenticates user and creates session if valid
    email = params[:user][:email]
    password = params[:user][:password]
    user = User.find_by_email(email).try(:authenticate,password)
    if user
      session[:id] = user.id
      redirect_to user_path user.id
    else 
      flash[:error] = 'Login Failed'
      redirect_to login_path
    end
  end

  def destroy 
    session.clear
    redirect_to "/login"
    #removes user from session
  end




end
