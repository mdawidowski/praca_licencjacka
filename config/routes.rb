Rails.application.routes.draw do

  devise_for :users
  root 'home#index'
  get 'home/panel_administratora'
  resources :aukcjes
  resources :kategories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
