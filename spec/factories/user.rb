FactoryBot.define do
  factory :user do
    first_name { "First Name" }
    last_name { "Last Name" }
    sequence(:email) { |n| "test#{n}@test.com" }
    password { "123456" }
    password_confirmation { "123456" }
    role { :chef }
  end
end