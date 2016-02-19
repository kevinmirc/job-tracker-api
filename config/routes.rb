Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :notes
      resources :opportunities
      resources :contacts
      post "/users/sign_in", to: "sessions#create"
      resources :users
    end
  end

 
end
