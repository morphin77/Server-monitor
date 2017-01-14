Rails.application.routes.draw do
  resources :sys_infos
  root 'sys_infos#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
