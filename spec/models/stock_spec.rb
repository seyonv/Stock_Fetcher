require 'spec_helper'

describe Stock do
  before do
  	#for stock1, manually assign variables
  	#for stock2, use the herval/yahoofinance API
  	@stock=Stock.new(symbol: "BMO")
  end

  subject {@stock}
  it {should respond_to(:symbol)}
  it {should respond_to(:askprice)}
  it {should respond_to(:stockname)}
  it {should respond_to(:closeprice)}
  it {should respond_to(:marketcap)}
  








end
