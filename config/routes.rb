Grant::Application.routes.draw do
  resources :prayer_requests


  resources :grant_stories


  resources :registrations


  get "home/about"

  get "home/index"

  resources :comments

  root :to => "home#index"
  resources :users, :only => [:index, :show, :edit, :update ]

  get "home/about"
  get "home/services"
  get "home/meals"
  get "home/questions"

  match '/auth/:provider/callback' => 'sessions#create'
  match '/signin' => 'sessions#new', :as => :signin
  match '/signout' => 'sessions#destroy', :as => :signout
  match '/auth/failure' => 'sessions#failure'
end
