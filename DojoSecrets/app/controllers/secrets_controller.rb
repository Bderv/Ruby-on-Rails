class SecretsController < ApplicationController
  def index
    @secrets = Secret.all
  end

  def create
    @user = User.find(session[:id])
    @secret = Secret.new(secret_params)
    @secret.user = @user
    @secret.save
    redirect_to secrets_path
  end

  def destroy
    @user = User.find(session[:id])
    @secret = Secret.find(params[:id])
    if @secret.user == @user
      @secret.destroy
    end
    redirect_to secrets_path
  end

  private
  def secret_params
    params.require(:secret).permit(:content)
  end
end
