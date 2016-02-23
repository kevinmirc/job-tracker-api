Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :notes
      resources :opportunities
      resources :contacts
      get "users/me", to: "users#me"
      resources :users
    end
  end
  post "/users/sign_in", to: "sessions#create"
end
