class Hashtag < ActiveRecord::Base
  belongs_to :post
  validates_presence_of :link, :post_id
end
