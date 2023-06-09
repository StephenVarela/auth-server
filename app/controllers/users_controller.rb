class UsersController < ApplicationController
  before_action :require_login, only: [:auth]
  
  def create
    user = User.new(user_params)
    user.save!
  end

  def auth
    render json: {body: "you be authorized"}
  end

  private
  def user_params
    params.require(:user).permit(:email, :password)
  end
end
