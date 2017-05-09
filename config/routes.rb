Rails.application.routes.draw do
  scope "(:locale)", locale:  /en|vi/, defaults: {locale: "en"} do
    root "pages#show", page: "home"
    get "/*page" => "pages#show"
  end
end
