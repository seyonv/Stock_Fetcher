class ChangeClosepriceFormatInStocks < ActiveRecord::Migration
  def change
  	change_column :stocks, :closeprice, :text
  end
end
