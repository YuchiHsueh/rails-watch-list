Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "lists#index"
  resources :bookmarks, only: [:destroy]
  resources :lists, only: %i[show new create] do
    resources :bookmarks, only: %i[new create]
    resources :reviews, only: %i[new create]
  end
end
