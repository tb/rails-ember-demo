require 'ffaker'
include FactoryGirl::Syntax::Methods

15.times do
  create :company
end