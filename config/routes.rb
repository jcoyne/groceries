Rails.application.routes.draw do
  resources :lists do
    resources :items
  end
  resources :categories
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'lists#index'
end
