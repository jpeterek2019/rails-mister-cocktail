Rails.application.routes.draw do
  get 'reviews/create'
root to: "cocktails#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :cocktails, only: [:index, :show, :new, :create] do
  resources :doses, only: [:create]
  resources :reviews, only: [:create]
end
resources :doses, only: [:destroy]
resources :review, only: [:destroy]
end
