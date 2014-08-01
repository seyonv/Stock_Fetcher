class StockSerializer < ActiveModel::Serializer
  #The attibutes below are the ones taht are serialized
  attributes :id, :stockname, :closeprice, :askprice, :marketcap,:url,:path

  #can include has_many here if Stock has_many something
  #including url in the JSON output
  #including path in the JSON output
  def url
  	stock_url(object)
  end

  def path
  	stock_path(object)

  end
  
end
