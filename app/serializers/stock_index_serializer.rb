class StockIndexSerializer < ActiveModel::Serializer
  attributes :id, :symbol, :stockname

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
