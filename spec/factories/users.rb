FactoryBot.define do
  factory :user do
    sequence(:first_name) { |n| Faker::Name.first_name }
    sequence(:last_name) { |n| Faker::Name.last_name }
    sequence(:email) { |n| Faker::Internet.email }
  end
end
