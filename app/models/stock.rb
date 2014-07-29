#Stock Model (table is designed here)
class Stock < ActiveRecord::Base
	belongs_to :YahooFinance
	

end
