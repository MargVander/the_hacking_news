require 'faker'

20.times do
  user = User.create!(email: Faker::Internet.email, username: Faker::Internet.username)
end

30.times do
  link = Link.create!(user_id: rand(1..20), url: Faker::Internet.url)
end

40.times do
  com = Comment.create!(user_id: rand(1..20), link_id: rand(1..30), content: Faker::Simpsons.quote)
end

50.times do
  ccom = ComComment.create!(user_id: rand(1..20), comment_id: rand(1..40), content: Faker::Simpsons.quote)
end