class AddIndexToCars < ActiveRecord::Migration[5.2]
  def change
    add_index :Cars, :model, unique:true
  end
end
