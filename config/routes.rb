Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :restaurants, only: [:index, :show, :new, :create, :destroy] do
    resources :reviews, only: [:new, :create]
  end
  get "up" => "rails/health#show", as: :rails_health_check
end
