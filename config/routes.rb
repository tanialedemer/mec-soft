Rails.application.routes.draw do
  
  
  resources :orden_trabajo_presupuestos do 
    resources :detalle_ot_presupuestos 
  end
  
  resources :mecanicos
  resources :estados
  get 'compra/:id/detalle/', to: 'compras#detalle', as: 'compra_id_detalle'
  get 'orden_trabajo_presupuesto/:id/detalle/', to: 'orden_trabajo_presupuestos#detalle', as: 'orden_trabajo_presupuesto_id_detalle'

  # get 'compras/:compra_id/pago_factura/', to: 'compras#pago_factura', as: 'pago_factura_add'

  resources :pago_facturas

  resources :compras do
    resources :detalle_compras
  end

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
