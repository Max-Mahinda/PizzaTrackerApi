# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Seed data for Restaurants
restaurants = [
  { name: "Sottocasa NYC", address: "298 Atlantic Ave, Brooklyn, NY 11201" },
  { name: "PizzArte", address: "69 W 55th St, New York, NY 10019" },
  # Add more restaurants if needed
]

restaurants.each do |restaurant_data|
  Restaurant.create!(restaurant_data)
end

# Seed data for Pizzas
pizzas = [
  { name: "Cheese", ingredients: "Dough, Tomato Sauce, Cheese" },
  { name: "Pepperoni", ingredients: "Dough, Tomato Sauce, Cheese, Pepperoni" },
  # Add more pizzas if needed
]

pizzas.each do |pizza_data|
  Pizza.create!(pizza_data)
end

# Seed data for RestaurantPizzas
restaurant_pizzas = [
  { restaurant_id: 1, pizza_id: 1, price: 10 },
  { restaurant_id: 1, pizza_id: 2, price: 12 },
  { restaurant_id: 2, pizza_id: 1, price: 11 },
  # Add more restaurant_pizzas if needed
]

restaurant_pizzas.each do |rp_data|
  RestaurantPizza.create!(rp_data)
end
