class UsersController < ApplicationController
  def new
    # leaving blank for now
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to login_path
    else  
      flash[:error] = 'Cannot be Blank'
      redirect_to login_path
    end
  end

  def edit
    @user = User.find(session[:id])
  end

  def show 
    @user = User.find(session[:id])
  end

  def update
    @user = User.find(session[:id])
    @user.first_name = params[:user][:first_name]
    @user.last_name = params[:user][:last_name]
    @user.email = params[:user][:email]
    @user.city = params[:user][:city]
    @user.state = params[:user][:state]
    if @user.save
      flash[:success] = "Successfully Updated"
      redirect_to user_path @user.id
    else  
      flash[:error] = "Invalid Email"
      redirect_to edit_user_path @user.id
    end
  end

  def destroy
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :city, :state, :password, :password_confirmation)
  end

end
