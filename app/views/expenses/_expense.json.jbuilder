json.extract! expense, :id, :bought_at, :price, :category_id, :product_id, :created_at, :updated_at
json.url expense_url(expense, format: :json)
