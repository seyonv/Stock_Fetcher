class CreateStocks < ActiveRecord::Migration
  def change
    create_table :stocks do |t|
      t.string :symbol
      t.decimal :askprice
      t.string :stockname
      t.decimal :closeprice
      t.decimal :marketcap

      t.timestamps
    end
  end
end
