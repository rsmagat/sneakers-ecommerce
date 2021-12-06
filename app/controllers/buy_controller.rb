class BuyController < ApplicationController
    def create
        # logger.debug("Adding #{params[:id]} to cart.")
        id = params[:id].to_i

        session[:shopping_cart] << id

        redirect_to cart_index_path
    end
end
