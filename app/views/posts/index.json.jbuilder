json.array!(@posts) do |post|
  json.extract! post, :id, :titulo, :texto, :user_id, :candidato_id
  json.url post_url(post, format: :json)
end
