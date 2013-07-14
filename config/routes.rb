Cemetery::Application.routes.draw do
  root to: "landing_page#index"

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :posts, path: "news", only: [:index, :show]
  resources :parts, path: "", only: :show do
    resources :quarters, only: :show do
      resources :sepulchres, only: :show
    end
  end
end
