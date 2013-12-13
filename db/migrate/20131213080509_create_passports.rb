class CreatePassports < ActiveRecord::Migration
  def change
    create_table :passports do |t|
      t.integer :company_id
      t.string :title

      t.timestamps
    end
  end
end
