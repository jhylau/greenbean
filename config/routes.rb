Cleanpowerperks::Application.routes.draw do

  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'
  root :to => "home#index"

  resources :greenbean
end
