Rails.application.routes.draw do
    root "sneakers#index"
    get "/brands", to: "brands#index", as: "brands"
    get "/brands/:id", to: "brands#show", as: "brand"
    get "/sale", to: "sneakers#sale", as: "sale"
    get "/new", to: "sneakers#new", as: "new"
    get 'customers/index'
    get 'customers/registration'

    resources :sneakers, only: %i[index show] do
        collection do
            get "search"
        end
      end
end
