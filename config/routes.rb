Rails.application.routes.draw do
    root "sneakers#index"
    get "/sneakers/:id", to: "sneakers#show", as: "sneaker"
    get "/brands", to: "brands#index", as: "brands"
    get "/brands/:id", to: "brands#show", as: "brand"
end
