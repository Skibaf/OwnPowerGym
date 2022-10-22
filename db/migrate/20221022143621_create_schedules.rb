class CreateSchedules < ActiveRecord::Migration[7.0]
  def change
    create_table :schedules do |t|
      t.date :fecha
      t.time :hora
      t.references :lesson, null: false, foreign_key: true

      t.timestamps
    end
  end
end
