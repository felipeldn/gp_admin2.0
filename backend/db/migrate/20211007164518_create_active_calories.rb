class CreateActiveCalories < ActiveRecord::Migration[6.0]
  def change
    create_table :active_calories do |t|
      t.integer :value
      t.timestamp :date_time
      t.belongs_to :patient, null: false, foreign_key: true

      t.timestamps
    end
  end
end
