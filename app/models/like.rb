class Like < ActiveRecord::Base
  belongs_to :post
  belongs_to :user

  validates_uniqueness_of :post_id, scope: :user_id   
  validates_presence_of :post_id, :user_id
end
