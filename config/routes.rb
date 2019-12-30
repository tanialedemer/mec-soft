Rails.application.routes.draw do
  resources :detalle_compras
  resources :compras
  resources :tipo_facturas
  resources :repuesto_servicios
  resources :categories
  resources :proveedors
  resources :clients do
  	resources :vehiculos
  end
  root to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
