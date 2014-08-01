class ChangeMarketcapFormatInStocks < ActiveRecord::Migration
  def change
  	  	change_column :stocks, :marketcap, :text
  end
end
