class ChangeEngineToBeDecimalInCars < ActiveRecord::Migration[5.2]
  def change
    change_column :cars, :engine, :decimal
  end
end
