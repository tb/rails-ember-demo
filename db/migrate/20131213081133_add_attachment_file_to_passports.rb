class AddAttachmentFileToPassports < ActiveRecord::Migration
  def self.up
    change_table :passports do |t|
      t.attachment :file
    end
  end

  def self.down
    drop_attached_file :passports, :file
  end
end
