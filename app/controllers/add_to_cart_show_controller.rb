class AddToCartShowController < ApplicationController
    def create
        # logger.debug("Adding #{params[:id]} to cart.")
        id = params[:id].to_i

        session[:shopping_cart] << id

        redirect_to sneaker_path(id)
    end
end
