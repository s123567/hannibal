class PagesController < ApplicationController
  def home
    @quote = Quote.new
    @quotes = Quote.all
    @user = current_user
    if user_signed_in?
      @user_quotes = @user.quotes
        else
          @user_quotes = @quotes
        end
  end

end
