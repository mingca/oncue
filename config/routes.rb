Rails.application.routes.draw do
  resources :customers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :leads, only: [:create, :index]

  root to: 'leads#new'
end
