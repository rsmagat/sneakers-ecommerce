Rails.application.routes.draw do
    devise_for :admin_users, ActiveAdmin::Devise.config
    devise_for :customers
    ActiveAdmin.routes(self)

    root "sneakers#index"

    get "/brands", to: "brands#index", as: "brands"
    get "/brands/:id", to: "brands#show", as: "brand"
    get "/search", to: "sneakers#search"
    get "/sale", to: "sneakers#sale", as: "sale"
    get "/new", to: "sneakers#new", as: "new"
    get "/customers", to: "sneakers#index"
    get "/order/success", to: "cart#success", as: "success"
    get "/order/fail", to: "cart#fail", as: "fail"
    get "/orders", to: "cart#orders", as: "orders"
    get "/about", to: "website_information#about"
    get "/contact", to: "website_information#contact"

    resources :sneakers, only: %i[index show] do
        collection do
            get "search"
        end
    end

    resources :cart, only: %i[index show create update destroy]
    resources :buy, only: %i[create]
    resources :orders, only: %i[create]
    resources :quantities, only: %i[create]

end
