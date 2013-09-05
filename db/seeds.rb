require 'faker'

3.times do
  User.create(username: Faker::Internet.user_name)
end

User.all.each do |user|
  2.times do
    user.posts << Post.create(title: Faker::Company.bs)
  end
end

users = User.all.shuffle

Post.all.each do |post|
  users.each do |user|
    Comment.create(:user_id => user.id, :post_id => post.id, :description => Faker::Lorem.paragraph(sentence_count = 5))
  end
end


#VALIDATION TESTS
User.create(username: 'mo-unique')
# User.all.size == 4
# User.create(username: 'mo-unique') -> throws error 
User.create()

# Post.all.size == 6
Post.create(:user_id => 1)
Post.create(:title => 'something')


# Comment.all.size == 18
Comment.create(:user_id => 1, :post_id => 1)
Comment.create(:description => 'something')