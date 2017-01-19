Rails.application.routes.draw do
  
  resources :recources
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  
  resources :dashboards
  resources :sys_infos
  resources :nodes

  get 'static_pages/welcome'
  root 'static_pages#welcome'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
