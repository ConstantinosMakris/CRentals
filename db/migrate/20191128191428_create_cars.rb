class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.string :model
      t.integer :engine
      t.integer :seats
      t.string :transmission
      t.boolean :ac
      t.decimal :priceDay
      t.decimal :priceWeek

      t.timestamps
    end
  end
end
