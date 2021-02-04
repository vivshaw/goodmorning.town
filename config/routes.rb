Rails.application.routes.draw do
  # Main screen
  root "home#index"
  get 'recent', to: "home#recent"

  # Greeting routes. Used only for Turbo, not visited directly
  resources :greetings, only: [:new, :show, :create, :destroy]
end
