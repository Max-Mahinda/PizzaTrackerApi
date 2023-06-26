class Pizza < ApplicationRecord
    has_many :pizza_orders
    has_many :restaurants, through: :pizza_orders
  
    validates :name, presence: true
    validates :ingredients, presence: true
  end
  
  