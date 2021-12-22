Rails.application.routes.draw do
  devise_for :users
  root 'foods#index'
  get 'users/index'
  resources :users, only: %i[index] 
  resources :foods, only: [:index, :new, :create, :destroy]
  resources :recipes, only: [:index, :show, :new, :create, :destroy] do
    resources :recipe_foods, only: [:new, :create, :destroy]
  end
  resources :inventories
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  put 'recipes/:id/update', to: 'recipes#update', as: 'update'
end

