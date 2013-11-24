json.array!(@items) do |item|
  json.extract! item, :name, :category, :subcategory, :description, :picture
  json.url item_url(item, format: :json)
end
