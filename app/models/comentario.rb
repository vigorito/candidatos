class Comentario < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  validates_presence_of :user_id, :post_id
  validates_length_of :texto, minimum: 15, allow_blank: false
end
