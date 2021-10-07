class CreateTimeStandings < ActiveRecord::Migration[6.0]
  def change
    create_table :time_standings do |t|
      t.integer :value
      t.timestamp :date_time
      t.belongs_to :patient, null: false, foreign_key: true

      t.timestamps
    end
  end
end
