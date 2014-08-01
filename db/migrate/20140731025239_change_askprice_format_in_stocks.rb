class ChangeAskpriceFormatInStocks < ActiveRecord::Migration
  def change
  	  	change_column :stocks, :askprice, :text
  end
end
