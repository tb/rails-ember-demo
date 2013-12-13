class Company < ActiveRecord::Base
  has_many :passports

  validates :name, :city, :address, :country, presence: true

end
