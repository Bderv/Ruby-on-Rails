class LikesController < ApplicationController
  def create
    @user = current_user
    @secret = Secret.find(params[:secret_id])
    if @user.secrets_liked.exists?(params[:secret_id])
      flash[:error] = 'You already liked this!'
    else  
      @user.secrets_liked << @secret
      # @like = Like.new
      # @like.user = @user
      # @like.secret = @secret
      # @like.save
    end
    redirect_to secrets_path
  end

  def destroy
    @user = User.find(session[:id])
    @like = Like.find_by(user: current_user, secret: Secret.find(params[:secret_id]))
    if @like.user == @user
      @like.destroy 
    end
    redirect_to secrets_path
  end
end
