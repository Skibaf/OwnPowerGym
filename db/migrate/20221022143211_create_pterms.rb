class CreatePterms < ActiveRecord::Migration[7.0]
  def change
    create_table :pterms do |t|
      t.string :pterm

      t.timestamps
    end
  end
end
