class UsersController < ApplicationController
  before_action :set_user, only: :show
  
  def index
    @users = User.all
  end
  
  def show 
    @user = User.find(params[:id])
  end
  
  private
  def users_params
    params.require(:user).permit(:id)
  end
  
  def set_user
    @user = User.find(params[:id])
  end
end
