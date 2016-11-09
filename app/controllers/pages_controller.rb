class PagesController < ApplicationController
  def home
    @quote = Quote.new
    @quotes = Quote.all
    
  end

  private

  
end
