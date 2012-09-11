Cemetery::Application.routes.draw do

  root to: 'home#index'
  devise_for :admin_users, ActiveAdmin::Devise.config

  resources :sepulchres, only: [:index, :show]
  match 'pages/:action' => 'static_pages#:action', as: 'static_page'

  ActiveAdmin.routes(self)

end
