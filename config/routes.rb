Cleanpowerperks::Application.routes.draw do

  root :to => "home#index"

  resources :lunches
  resources :signups
end
