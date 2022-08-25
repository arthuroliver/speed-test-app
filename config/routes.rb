Rails.application.routes.draw do
  get 'admins/index'
  get 'users/index'
  devise_for :users
  devise_for :admins
  get 'welcome/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "welcome#index"
end
