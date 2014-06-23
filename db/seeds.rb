# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


def rand_time
 a = 1.year.ago
 b = Time.now
  rand(a..b)
end

p 'Creating posts, user and comments...'

rand(10..30).times do
 u = User.create(email: Faker::Internet.email,
                  first_name: Faker::Internet.user_name,
                  last_name: Faker::Internet.user_name,
                  password: Faker::Internet.password )

 p = Post.create(text:Faker::Lorem.paragraph(10), title:Faker::Lorem.sentence,theme:Faker::Lorem.word,user_id:u.id  )

rand(1..20).times do
 Comment.create(text:Faker::Lorem.paragraph, post_id: p.id, user_id:rand(1..20),created_at:rand_time )
end

end

p 'Done'