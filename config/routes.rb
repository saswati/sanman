Sanman::Application.routes.draw do



  devise_for :users

  get "/home", to: 'pages#home'
  get "/aboutus", to: 'pages#aboutus'
  get "/electronic_manufacturing", to: 'pages#electronic_manufacturing'
  get "/products", to: 'pages#products'
  get "/rfq", to: 'pages#rfq'
  get "/careers", to: 'pages#careers'
  get "/contact_us", to: 'pages#contact_us'


  resources :users, :only => [:index]
  resources :profiles, :only => [:show, :edit, :index, :update]


  match '/Join Us', :to => 'devise/registrations#new'
  match '/Sign in', :to => 'devise/sessions#new'
  match '/Sign out', :to => 'devise/sessions#destroy'

  root :to => 'pages#home'

end
