class RenameRestraurantIdResaurantPizas < ActiveRecord::Migration[6.1]
  def change
    rename_column :restaurant_pizzas, :restraurant_id, :restaurant_id
  end
end
