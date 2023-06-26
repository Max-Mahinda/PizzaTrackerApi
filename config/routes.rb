
Rails.application.routes.draw do
  resources :restaurants do
    resources :pizzas, only: [:index, :create]
  end

  resources :pizzas do
    resources :restaurants, only: [:index, :create]
  end

  resources :restaurant_pizzas, only: [:create]
end
