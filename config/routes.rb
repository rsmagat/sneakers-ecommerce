Rails.application.routes.draw do
    root "sneakers#index"
    get "/brands", to: "brands#index", as: "brands"
    get "/brands/:id", to: "brands#show", as: "brand"
end
