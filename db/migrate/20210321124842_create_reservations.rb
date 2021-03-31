class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.date :date_of_use
      t.boolean :pick_up
      t.integer :transfer
      t.string :remarks
      t.boolean :approval
      t.string :children_name

      t.timestamps
    end
  end
end
