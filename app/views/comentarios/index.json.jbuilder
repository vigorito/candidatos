json.array!(@comentarios) do |comentario|
  json.extract! comentario, :id, :texto, :user_id, :post_id
  json.url comentario_url(comentario, format: :json)
end
