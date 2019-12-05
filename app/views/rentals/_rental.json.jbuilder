json.extract! rental, :id, :user_id, :car_id, :start, :end, :address, :comments, :created_at, :updated_at
json.url rental_url(rental, format: :json)
