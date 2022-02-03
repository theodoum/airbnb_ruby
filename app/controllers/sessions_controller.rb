class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.find_by(email: user_params[:email])

    if @user && @user.password == user_params[:password]
      
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end
end
