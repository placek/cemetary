Cemetery::Application.routes.draw do

  root to: "parts#index"

  get ":part_id" => "sepulchres#index", as: "part"
  get ":part_id/:id" => "sepulchres#show", as: "sepulchre"
  get "pages/:action" => "static_pages#:action", as: "static_page"

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

end
