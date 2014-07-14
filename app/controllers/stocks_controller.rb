class StocksController < ApplicationController
  #HTTP GET to /resources/new is inteded to render a form 
  #suitable for creating a new resource 
  #HTTP POST to /resources/create takes the rcord created
  #as paort of the new aciton and passes to create action in controller
  #and attempts to save it to the database
  def new
  	@stock=Stock.new
  end
  
  #this method is intended to display the stock variable
  def singlestock
  	@stock=Stock.new
  	@stock.symbol="BMO.TO"
    data = YahooFinance.quotes([@stock.symbol],[:name,:last_trade_price,:market_capitalization])
    @stock.stockname=data[0].name
  	@stock.closeprice=data[0].last_trade_price
    @stock.marketcap=data[0].market_capitalization
  	#@stock.stockname=YahooFinance.quotes(["BMO"],[:name])
  	

  end

=begin
  def create
  	@stock=Stock.new(stock_params)
  end
  #this is the set permissions and choose what can be set/accessed
  def stock_params
  	params.require(:stock).require(:symbol,:askprice,:stockname
  								   :stockname,:closeprice,:marketcap)
  end
=end

end
