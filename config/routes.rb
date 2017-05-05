Rails.application.routes.draw do

  get 'obserwowane/index'

  get 'mojeaukcje/index'

  mount Ckeditor::Engine => '/ckeditor'
  devise_for :admins do
  get '/admins/sign_out' => 'devise/sessions#destroy'
  end
  devise_for :users, :controllers => { registrations: 'registrations', passwords: 'passwords' }
  root 'home#index'
  get 'home/panel_administratora'
  get 'home/statystyki'
  get 'home/panel_uzytkownika'
  get 'home/uzytkownicy'
  get 'home/administratorzy'
  get 'search', to: 'search#search'

  resources :mojeaukcjes
  resources :searches
  resources :aukcjes
  resources :kategories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
