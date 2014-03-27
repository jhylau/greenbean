Cleanpowerperks::Application.routes.draw do

  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'
  root :to => "home#index"

  resources :lunches
  resources :signups
  get "/planner" => "planner#index"
  get "/roll" => "planner#roll"
end
