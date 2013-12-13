require 'ffaker'
include FactoryGirl::Syntax::Methods

5.times do
  create(:company).tap do |company|
    2.times do
      create :passport, company: company
    end
  end
end