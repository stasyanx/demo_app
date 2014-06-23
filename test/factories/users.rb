FactoryGirl.define do
  factory :user do
    first_name Faker::Internet.user_name
    last_name Faker::Internet.user_name
    sequence(:email) {|n| "#{n}#{Faker::Internet.email}"}
    password Faker::Internet.password
  end
end