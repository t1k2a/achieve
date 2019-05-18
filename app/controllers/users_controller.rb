class UsersController < ApplicationController
  def index
    @users = User.all
  end
  
  def edit 
    @users = User.find(:id)
  end
  
  private
  def users_params
    params.require(:user).permit(:id)
  end
end
