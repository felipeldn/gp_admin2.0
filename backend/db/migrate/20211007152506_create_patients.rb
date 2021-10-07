class CreatePatients < ActiveRecord::Migration[6.0]
  def change
    create_table :patients do |t|
      t.string :name
      t.date :dob
      t.string :gender
      t.string :telephone
      t.string :address
      t.string :hosp_number
      t.string :nhs_number

      t.timestamps
    end
  end
end
