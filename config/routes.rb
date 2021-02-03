Rails.application.routes.draw do
  # Main screen
  root "home#index"

  # Greeting routes. Used only for Turbo, not visited directly
  resources :greetings, only: [:new, :show, :create, :destroy]
end
