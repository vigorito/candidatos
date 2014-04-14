class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :candidato
  has_many :comentarios

  validates_presence_of :titulo, :user_id, :candidato_id
  validates_length_of :texto, minimum: 15, allow_blank: false
end
