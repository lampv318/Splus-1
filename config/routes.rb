Rails.application.routes.draw do
  devise_for :users
  resources :users, only: :show
  resources :classrooms
  resources :paticipations, only: [:destroy, :create]

  root "pages#home"
  get "/*page" => "pages#show"
end
