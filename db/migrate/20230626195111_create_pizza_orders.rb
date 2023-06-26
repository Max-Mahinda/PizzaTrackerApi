class CreatePizzaOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :pizza_orders do |t|
      t.string :name
      t.string :ingredients

      t.timestamps
    end
  end
end
