class PassportSerializer < ActiveModel::Serializer
  embed :ids, include: true

  attributes :id, :title

  has_one :company
end
