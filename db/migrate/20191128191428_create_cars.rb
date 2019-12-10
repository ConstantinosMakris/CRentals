class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.string :model, null: false
      t.integer :engine, null: false
      t.integer :seats, null: false
      t.string :transmission, null: false
      t.boolean :ac
      t.decimal :priceDay, null: false
      t.decimal :priceWeek, null: false

      t.timestamps
    end
  end
end
