json.array!(@users) do |user|
  json.extract! user, :id, :nome, :email, :password
  json.url user_url(user, format: :json)
end
