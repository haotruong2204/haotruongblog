Rails.application.routes.draw do
  scope "(:locale)", locale: /en|vi/ do
    namespace :admin do
      mount Ckeditor::Engine => "/ckeditor"
      devise_for :admins, path: "", path_names: { sign_in: "login", sign_out: "logout" }
      root "dashboards#index"
      resources :posts
      resources :abouts
    end
    root "home_pages#index"
    resources :posts, param: :slug
    get "/about" => "abouts#show"
    devise_for :users, skip: :omniauth_callbacks, path_names: { sign_in: "login", sign_out: "logout" }
  end
    devise_for :users, only: :omniauth_callbacks, controllers: {omniauth_callbacks: "users/omniauth_callbacks"}
end
