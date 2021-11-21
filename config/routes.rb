Rails.application.routes.draw do
  get 'cart/index'
    devise_for :customers

    root "sneakers#index"

    get "/brands", to: "brands#index", as: "brands"
    get "/brands/:id", to: "brands#show", as: "brand"
    get "/sale", to: "sneakers#sale", as: "sale"
    get "/new", to: "sneakers#new", as: "new"
    get '/cart', to: "cart#index", as: "cart"
    get '/customers', to: "sneakers#index"

    resources :sneakers, only: %i[index show] do
        collection do
            get "search"
        end
      end
end
