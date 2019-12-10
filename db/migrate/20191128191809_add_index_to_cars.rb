class AddIndexToCars < ActiveRecord::Migration[5.2]
  def change
    add_index :cars, :model, unique:true
  end
end
