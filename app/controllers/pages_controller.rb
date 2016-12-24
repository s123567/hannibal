class PagesController < ApplicationController
  def home
    @quote = Quote.new
    @quotes = Quote.search(params[:keyword])
    @user = current_user

    @random_quote = @quotes.sample

    @quotes_for_modal = Quote.search(params[:keyword])

    if user_signed_in?
      @user_quotes = @user.quotes
      else
      @user_quotes = @quotes
    end

  end

end
