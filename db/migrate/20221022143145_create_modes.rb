class CreateModes < ActiveRecord::Migration[7.0]
  def change
    create_table :modes do |t|
      t.string :mode

      t.timestamps
    end
  end
end
