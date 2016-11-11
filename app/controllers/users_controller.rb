class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @quotes = @user.quotes
    
  end
end
