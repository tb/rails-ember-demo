class Passport < ActiveRecord::Base
  belongs_to :company

  has_attached_file :file

  validates_attachment_presence :file
  validates_attachment_size :file, less_than: 2.megabytes
  validates_attachment :file, content_type: { content_type: "application/pdf" }
end
