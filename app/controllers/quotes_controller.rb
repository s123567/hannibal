class QuotesController < ApplicationController
  def create
    @quote = current_user.quotes.build(quote_params)
    if @quote.save
      @quote.user = current_user
      flash[:success] = 'Quote created'
      redirect_to root_url
    else
      render 'pages/home'
    end

  end

  def destroy
    @quote = Quote.find(params[:id])
    if @quote.destroy
    redirect_to root_url
  else
    render 'pages/error'
  end
    
  end

  def quote_params
    params.require(:quote).permit(:content, :user_id)
  end

end
