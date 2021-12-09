class CartController < ApplicationController
    def index
        @brands = Brand.all
        @order = Order.new
    end

    def create
        # logger.debug("Adding #{params[:id]} to cart.")
        id = params[:id].to_i
        sneaker = Sneaker.find(id)

        session[:shopping_cart] << id

        flash[:alert] = "#{sneaker.name} has been added to your cart."

        redirect_to "#{root_path}#sneaker-container"
    end

    def destroy
        id = params[:id].to_i

        session[:shopping_cart].delete(id)

        redirect_to cart_index_path
    end

    def success
        @brands = Brand.all
    end

    def fail
        @brands = Brand.all
    end

    def orders
        @brands = Brand.all

        if customer_signed_in?
            @orders = Order.where("customer_id LIKE ?", current_customer.id)
        end
    end
end
