# app/models/pizza_order.rb
class PizzaOrder < ApplicationRecord
    belongs_to :pizza
    belongs_to :restaurant
  
    validates :quantity, presence: true, numericality: { greater_than: 0 }
  end
  
  