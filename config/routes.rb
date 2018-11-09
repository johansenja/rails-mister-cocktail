Rails.application.routes.draw do
  get 'ingredients/index'
  root to: 'cocktails#index'
  resources :cocktails, except: [:index]
  resources :ingredients, only: [:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
