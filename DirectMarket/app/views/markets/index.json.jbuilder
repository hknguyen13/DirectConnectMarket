json.array!(@markets) do |market|
  json.extract! market, :name, :street, :city, :state, :day, :starttime, :endtime
  json.url market_url(market, format: :json)
end
