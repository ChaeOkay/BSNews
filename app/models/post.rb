class Post < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :user
  has_many :comments

  validates_presence_of :title, :user_id
end
