class BrandsController < ApplicationController
  def index
    @brands = Brand.all
  end

  def show
    @brands = Brand.all
    @brand = Brand.find(params[:id])
  end
end
