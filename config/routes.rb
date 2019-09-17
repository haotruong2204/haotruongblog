Rails.application.routes.draw do
  get 'posts/show'
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
  end
end
