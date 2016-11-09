class QuotesController < ApplicationController
  def create
    @quote = Quote.new(quote_params)
    if @quote.save
      redirect_to root_url
    else
      render 'pages/error'
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
    params.require(:quote).permit(:content)
  end

end
