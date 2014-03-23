class Asset < ActiveRecord::Base
  include Uploader::Asset
  belongs_to :user
  belongs_to :assetable, polymorphic: true
end