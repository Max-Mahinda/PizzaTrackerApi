class Restaurant < ApplicationRecord
    has_many :pizza_orders
    has_many :pizzas, through: :pizza_orders
  
    validates :name, presence: true
    validates :address, presence: true
  end
  
      
