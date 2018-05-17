json.extract! user, :id, :name, :email, :password_digest, :suburb, :skill, :image, :longitude, :latitude, :created_at, :updated_at
json.url user_url(user, format: :json)
