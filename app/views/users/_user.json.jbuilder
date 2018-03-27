json.extract! user, :id, :name, :gender, :height, :cellphone, :email, :paymentmethod, :payeeaccount, :created_at, :updated_at
json.url user_url(user, format: :json)
