Rails.application.routes.draw do
  namespace :admin do
    root "dashboards#index"
  end
end
