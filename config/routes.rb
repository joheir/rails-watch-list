Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :lists, only: %I[index show new create] do
    resources :bookmarks, only: %I[new create ]
  end
  resources :bookmarks, only: %I[destroy]
  # Defines the root path route ("/")
  root "lists#index"
end
