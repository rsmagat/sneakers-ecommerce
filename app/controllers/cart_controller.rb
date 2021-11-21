class CartController < ApplicationController
  def index
    @brands = Brand.all
  end
end
