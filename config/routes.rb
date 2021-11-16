Rails.application.routes.draw do
    root "sneakers#index"
    get "/sneakers", to: "sneakers#index", as: "sneakers"
    get "/sneakers/:id", to: "sneakers#show", as: "sneaker"
    get "/brands", to: "brands#index", as: "brands"
    get "/brands/:id", to: "brands#show", as: "brand"
    get "/sale", to: "sneakers#sale", as: "sale"
    get "/new", to: "sneakers#new", as: "new"
end
