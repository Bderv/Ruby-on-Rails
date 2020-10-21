class UsersController < ApplicationController
  def new
  end

  def create
    puts "*****************",params
    User.create(userParams)
    redirect_to '/result'
  end

  def show
    @user = User.last
  end

  private
  def userParams
    params.require(:user).permit(:name, :location, :language, :comment)
  end

end
