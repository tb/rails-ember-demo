class CompanySerializer < ActiveModel::Serializer
  embed :ids, include: true

  attributes :id, :name, :address, :city, :country, :email, :phone

  has_many :passports
end
