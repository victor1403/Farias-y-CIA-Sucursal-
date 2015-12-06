json.array!(@product_types) do |product_type|
  json.extract! product_type, :id, :product_type_name, :product_id
  json.url product_type_url(product_type, format: :json)
end
