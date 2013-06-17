Cemetery::Application.routes.draw do
  root to: "landing_page#index"
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :posts, path: "news", only: [:index, :show]
  get "pages/:action" => "static_pages#:action", as: "static_page"
  get ":part_id" => "sepulchres#index", as: "part"
  get ":part_id/:id" => "sepulchres#show", as: "sepulchre"
end
