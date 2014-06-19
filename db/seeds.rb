# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

p 'Creating posts, user and comments...'
10.times do
p u = User.create(email: Faker::Internet.email,
                  first_name: Faker::Internet.user_name,
                  last_name: Faker::Internet.user_name,
                  password: Faker::Internet.password )
 p = Post.create(text:Faker::Lorem.paragraph(10), title:Faker::Lorem.sentence,theme:Faker::Lorem.word,user_id:u.id  )
10.times do
 Comment.create(text:Faker::Lorem.paragraph, post_id: p.id, user_id:u.id )
  end
end

p 'Done'