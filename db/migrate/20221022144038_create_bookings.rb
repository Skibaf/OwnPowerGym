class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.date :fecha
      t.time :hora
      t.references :lesson, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.references :pterm, null: false, foreign_key: true

      t.timestamps
    end
  end
end
