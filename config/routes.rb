Rails.application.routes.draw do
 	root 'piezas#index'
 	get 'piezas/reporte'
    resources :piezas

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
