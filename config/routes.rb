Rails.application.routes.draw do
  get "/about" => "abouts#show"
  root "home_pages#index"
  namespace :admin do
    mount Ckeditor::Engine => "/ckeditor"
    devise_for :admins, path: "", path_names: { sign_in: "login", sign_out: "logout" }
    root "dashboards#index"
    resources :posts
    resources :abouts
  end
end
