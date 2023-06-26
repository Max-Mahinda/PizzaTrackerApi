class RestaurantsController < ApplicationController
    def index
      restaurants = Restaurant.all
      render json: restaurants, status: :ok
    end
  
    def show
      restaurant = Restaurant.find(params[:id])
      render json: restaurant, include: :pizzas, status: :ok
    rescue ActiveRecord::RecordNotFound
      render json: { error: "Restaurant not found" }, status: :not_found
    end
  
    def create
      restaurant = Restaurant.new(restaurant_params)
      if restaurant.save
        render json: restaurant, status: :created
      else
        render json: { errors: restaurant.errors.full_messages }, status: :unprocessable_entity
      end
    end
  
    def update
      restaurant = Restaurant.find(params[:id])
      if restaurant.update(restaurant_params)
        render json: restaurant, status: :ok
      else
        render json: { errors: restaurant.errors.full_messages }, status: :unprocessable_entity
      end
    rescue ActiveRecord::RecordNotFound
      render json: { error: "Restaurant not found" }, status: :not_found
    end
  
    def destroy
      restaurant = Restaurant.find(params[:id])
      restaurant.destroy
      head :no_content
    rescue ActiveRecord::RecordNotFound
      render json: { error: "Restaurant not found" }, status: :not_found
    end
  
    private
  
    def restaurant_params
      params.require(:restaurant).permit(:name, :address)
    end
  end
  