class UsersController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]
  before_action :authorized_params, only: [:show, :edit, :update, :destroy]
  
  def new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to login_path
    else  
      flash[:error] = 'Cannot be Blank'
      redirect_to new_user_path
    end
  end

  def show
    @secrets = Secret.all
    @user = User.find(session[:id])
  end

  def edit
    @user = User.find(session[:id])
  end

  def update
    @user = User.find(session[:id])
    @user.name = params[:user][:name]
    @user.email = params[:user][:email]
    if @user.save
      flash[:success] = "Successfully Updated"
      redirect_to user_path @user.id
    else  
      flash[:error] = "Invalid Email"
      redirect_to edit_user_path @user.id
    end
  end

  def destroy
    @user = User.find(session[:id])
    @user.destroy
    session[:id] = nil
    redirect_to new_user_path
  end

  private
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end

    def authorized_params
      @user = current_user
      unless params[:id].to_i == @user.id
        flash[:error] = "Your not that user!"
        redirect_to user_path @user.id
      end
    end
      
end
