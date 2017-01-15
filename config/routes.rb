Rails.application.routes.draw do
  get 'static_pages/welcome'

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  
  resources :dashboards
  resources :sys_infos
  root 'static_pages#welcome'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
