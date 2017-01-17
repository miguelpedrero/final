Rails.application.routes.draw do

  resources :companies
  devise_for :users, controllers: {
           :sessions => "users/sessions",
           :registrations => "users/registrations" }
  resources :users
  root to: "companies#index"	
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
