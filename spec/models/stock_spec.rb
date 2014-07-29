require 'spec_helper'

describe Stock do
  before do
  	#for stock1, manually assign variables
  	#for stock2, use the herval/yahoofinance API
    #SEE IF YOU CAN INSTEAD DO THIS USING FACTORY GIRL
  	@stock1=Stock.new
    @stock1.symbol="BMO.TO"
    data1 = YahooFinance.quotes([@stock1.symbol],[:name,:last_trade_price,:market_capitalization])
    @stock1.stockname=data1[0].name
    @stock1.closeprice=data1[0].last_trade_price
    @stock1.marketcap=data1[0].market_capitalization
  end

  subject {@stock1}
  it {should respond_to(:symbol)}
  it {should respond_to(:askprice)}
  it {should respond_to(:closeprice)}
  it {should respond_to(:stockname)}
  it {should respond_to(:closeprice)}
  it {should respond_to(:marketcap)}
  








end
