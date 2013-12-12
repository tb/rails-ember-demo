# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :company do
    name { Faker::Company.name }
    city { Faker::Address.city }
    address { Faker::Address.street_address }
    email { Faker::Internet.email }
    phone { Faker::PhoneNumber.phone_number   }
  end
end