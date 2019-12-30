Rails.application.routes.draw do
  resources :clients do
  	resources :vehiculos
  end
  root to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
