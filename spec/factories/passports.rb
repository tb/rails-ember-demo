# Read about factories at https://github.com/thoughtbot/factory_girl
include ActionDispatch::TestProcess

FactoryGirl.define do
  factory :passport do
    company { create :company }
    title { Faker::Company.position }
    file { fixture_file_upload Rails.root.join("spec/fixtures/passport.pdf"), 'application/pdf' }
  end
end
