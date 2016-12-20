class PagesController < ApplicationController
  def home
    @quote = Quote.new
    @quotes = Quote.search(params[:keyword]).paginate(:page => params[:page], :per_page => 10)
    @user = current_user
    @random_quote = @quotes.sample
    if user_signed_in?
      @user_quotes = @user.quotes
        else
          @user_quotes = @quotes
        end
  end

end
