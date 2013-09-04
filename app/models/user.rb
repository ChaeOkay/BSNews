class User < ActiveRecord::Base
  # Remember to create a migration!
  has_many :posts
  has_many :comments

  validates_presence_of :username
end
