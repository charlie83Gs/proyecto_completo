Rails.application.routes.draw do
  	

  get 'administrar/permisos'

  resources :muestreos
  get 'control/permisos'
  post 'administrar/ascender', :as => :ascender_usuario
  post 'administrar/descender', :as => :descender_usuario
  devise_for :users
  match 'users/:id' => 'administrar#destroy', :via => :delete, :as => :admin_destroy_user
  resources :empleados
  resources :proyectos
  resources :operacions
  resources :observacions
  resources :tareas
  resources :muestras
  get "index/home"

  root 'index#home'

  #devise_for :members, :controllers => { :registration => "registration" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
