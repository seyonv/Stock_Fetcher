class StocksController < ApplicationController
  #HTTP GET to /resources/new is inteded to render a form 
  #suitable for creating a new resource 
  #HTTP POST to /resources/create takes the rcord created
  #as paort of the new aciton and passes to create action in controller
  #and attempts to save it to the database
  def index
    @stocks=Stock.paginate(:page => params[:page]) #will_paginate gem separates into pages
    #implementing ActiveModelSerializer
    respond_to do |format|
      format.html
      format.json {render json: @stocks, :each_serializer => StockIndexSerializer}
    end
  end

  def new
  	@stock=Stock.new 
    data = YahooFinance.quotes([@stock.symbol],[:name,:last_trade_price,:market_capitalization])
    @stock.stockname=data[0].name
    @stock.closeprice=data[0].last_trade_price
    @stock.marketcap=data[0].market_capitalization
  end
  
  def show
    #@stock = Stock.find(params[:id]) 
    #Implementing ActiveModelSerializer
    @stock=Stock.find(params[:id])
    respond_to do |format|
      format.html
      format.json {render json: @stock}
    end
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

  def edit
  end
  #function to fetch Stock Infor
  def fetchdata
  end


  def create
  	@stock=Stock.new(stock_params)
    data = YahooFinance.quotes([@stock.symbol],[:name,:last_trade_price,:market_capitalization])
    @stock.stockname=data[0].name
    @stock.closeprice=data[0].last_trade_price
    @stock.marketcap=data[0].market_capitalization
    if @stock.save
        flash[:success] = "Stock Successfully saved"
        redirect_to @stock
    else
      render 'new'
    end
  end
  def update
    if @stock.update_attributes(stock_params)
      flash[:success]="Profile Updated"
      sign_in @user
      redirect_to @user
    else
      render 'edit'
    end
  end

  def destroy
    Stock.find(params[:id]).destroy
    flash[:success]= "Stock #{Stock.stockname} destroyed"
    redirect_to users_url
  end

  #this is the set permissions and choose what can be set/accessed
  def stock_params
  	# params.require(:stock).permit(:symbol,:askprice,:stockname,:closeprice,:marketcap)
    #allow user to either enter stock name or stocksymbol
    params.require(:stock).permit(:symbol,:stockname)
  end

  #Defining this method will automatically make the serializer
  #look in the controller and apply the set options
  #def default_serializer_options
   # {root: false}
  #end

  private :stock_params
end
