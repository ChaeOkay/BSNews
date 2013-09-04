class Comment < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :post
  belongs_to :user

  validates_presence_of :user_id, :post_id, :description
end
