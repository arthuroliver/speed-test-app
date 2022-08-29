Rails.application.routes.draw do
  resources :admin_list
  get 'admins_backoffice/index'
  get 'users_backoffice/index'
  devise_for :users
  devise_for :admins
  get 'welcome/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "welcome#index"
end
