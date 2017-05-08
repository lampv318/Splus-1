Rails.application.routes.draw do
  root "static_pages#home"
  get "/group", to: "static_pages#group"
  get "/home", to: "static_pages#home"
  get "/bookmarks", to: "static_pages#bookmarks"
  get "/notification", to: "static_pages#notification"
  get "/profile", to: "static_pages#profile"
end
