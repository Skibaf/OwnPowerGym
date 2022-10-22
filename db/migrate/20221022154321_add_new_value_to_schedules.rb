class AddNewValueToSchedules < ActiveRecord::Migration[7.0]
  def change
    add_column :schedules, :status, :integer
  end
end
