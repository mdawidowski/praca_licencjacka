Rails.application.routes.draw do

  mount Ckeditor::Engine => '/ckeditor'
  devise_for :admins do
  get '/admins/sign_out' => 'devise/sessions#destroy'
  end
  devise_for :users do
  get '/users/sign_out' => 'devise/sessions#destroy'
  end
  root 'home#index'
  get 'home/panel_administratora'
  get 'home/panel_uzytkownika'
  get 'home/uzytkownicy'
  get 'home/administratorzy'
  get "aukcjes/licytacje" => "aukcjes#licytacje"
  get 'search', to: 'search#search'
  resources :searches
  resources :aukcjes
  resources :kategories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
