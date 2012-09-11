Cemetery::Application.routes.draw do

  root to: 'home#index'
  ActiveAdmin.routes(self)
  devise_for :admin_users, ActiveAdmin::Devise.config
  match '/pages/:action' => 'static_pages#:action', as: 'static_page'

end
