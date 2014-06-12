# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

p 'Creating posts, user and comments...'
10.times do
 u = User.create(email: Faker::Name.name ,id:rand(1..10))
 p = Post.create(text:Faker::Lorem.paragraph(10), title:Faker::Lorem.sentence,theme:Faker::Lorem.word,user_id:u.id  )
 Comment.create(text:Faker::Lorem.paragraph, post_id: p.id, user_id:u.id )
end

p 'Done'