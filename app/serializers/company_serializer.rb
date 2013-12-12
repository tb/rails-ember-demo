class CompanySerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :city, :country, :email, :phone
end
