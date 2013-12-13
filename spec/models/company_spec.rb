require 'spec_helper'

describe Company do

  subject { build :company }

  it { should be_valid }

  it { should have_many(:passports) }

  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:city) }
  it { should validate_presence_of(:address) }

  it { should_not validate_presence_of(:email) }
  it { should_not validate_presence_of(:phone) }

end
