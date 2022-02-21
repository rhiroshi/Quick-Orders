FactoryBot.define do
  factory :order do
    client_name { "MyString" }
    table { 1 }
    user
    status { :finished }
  end
end
