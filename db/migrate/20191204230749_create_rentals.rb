class CreateRentals < ActiveRecord::Migration[5.2]
  def change
    create_table :rentals do |t|
      t.belongs_to :user, foreign_key: true
      t.references :car, foreign_key: true
      t.datetime :start
      t.datetime :end
      t.string :address
      t.text :comments

      t.timestamps
    end
  end
end
