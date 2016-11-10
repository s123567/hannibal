class UpvotesController < ApplicationController
  def create
    quote = Quote.find(params[:quote_id])
    quote.upvotes.create! user: current_user
    redirect_to root_path
  end

  def destroy
    upvote = Upvote.find(params[:id])
    upvote.destroy
    redirect_to root_path
  end

end
