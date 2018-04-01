Rails.application.routes.draw do
  	

  resources :muestreos
  get 'control/permisos'
  devise_for :users
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
