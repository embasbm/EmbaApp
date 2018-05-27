require 'faker'

User.destroy_all

50.times do |index|
  User.create(
    first_name: Faker::Name.name,
    last_name: Faker::Name.name,
    email: Faker::Internet.email,
  )
end