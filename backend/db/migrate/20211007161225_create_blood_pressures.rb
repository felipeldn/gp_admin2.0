class CreateBloodPressures < ActiveRecord::Migration[6.0]
  def change
    create_table :blood_pressures do |t|
      t.integer :systolic_value
      t.integer :diastolic_value
      t.timestamp :date_time
      t.belongs_to :patient, null: false, foreign_key: true

      t.timestamps
    end
  end
end
