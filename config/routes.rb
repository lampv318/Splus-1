Rails.application.routes.draw do
  devise_for :users
  resources :users, only: :show
  root "pages#show", page: "home"
  # get "/*page" => "pages#show"
end
