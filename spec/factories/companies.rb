# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :company do
    name { Faker::Company.name }
    address { Faker::Address.street_address }
    city { Faker::Address.city }
    country { ISO3166::Country.all.sample.first }
    email { Faker::Internet.email }
    phone { Faker::PhoneNumber.phone_number   }
  end
end