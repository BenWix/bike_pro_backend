Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :users, only: [:index, :show, :create, :destroy]

  resources :bikes, only: [:index, :create, :show, :update, :destroy]

  resources :repairs, only: [:index, :create]
end
