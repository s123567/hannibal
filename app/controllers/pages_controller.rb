class PagesController < ApplicationController
  def home
    @quote = Quote.new
    @quotes = Quote.all
    @user = current_user
  end


end
