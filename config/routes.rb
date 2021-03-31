Rails.application.routes.draw do
  post "/admin/users/create/" =>"admin/users#create"
  get "/admin/users/new" =>"admin/users#new"
  get "/admin/users/index" => "admin/users#index"
  get "/admin/users/:id" => "admin/users#show"
  get "/login" => "sessions#new"
  post "/login" => "sessions#create"
  get "reservations/id"=>"reservations#index"
  namespace :admin do
    resources :users
  end
  get "/" =>"home#top"
  get "about" => "home#about"
  
  resources :reservations
end
