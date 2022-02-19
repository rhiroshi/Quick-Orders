FactoryBot.define do
  factory :order do
    client_name { "MyString" }
    table { 1 }
    user { nil }
    status { 1 }
  end
end
