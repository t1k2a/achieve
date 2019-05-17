class RelationshipsController < ApplicationController
  before_action :authenicate_user!
  respond_to :js
  
  def create
    @user = USer.find(params[:relationship][:followed_id])
    current_user.follow!(@user)
    respond_with @user
  end

  def destroy
    @user = Relationship.find(params[:id]).followed
    current_user_follow!(@user)
    respond_with @user
  end
end
