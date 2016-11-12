class UsersController < ApplicationController
before_action :find_user, only:[:destroy]
  def show
    @user = User.find(params[:id])
    @quotes = @user.quotes
    
  end

  def show_follow
    
  end

  def following
    @title = "Following"
    @user = User.find(params[:id])
    @users = @user.following
    render 'show_follow'
  end

  def followers
    @title = "Followers"
    @user = User.find(params[:id])
    @users = @user.followers
    render 'show_follow'
  end
private
def find_user
  @user = User.find(params[:id])
  
end


end
