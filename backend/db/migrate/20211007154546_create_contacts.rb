class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
      t.timestamp :date_time
      t.integer :duration
      t.string :contact_type
      t.belongs_to :patient, null: false, foreign_key: true
      t.belongs_to :clinician, null: false, foreign_key: true

      t.timestamps
    end
  end
end
