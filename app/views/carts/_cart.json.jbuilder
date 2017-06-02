json.extract! cart, :id, :title, :author, :price, :description, :image, :created_at, :updated_at
json.url cart_url(cart, format: :json)
