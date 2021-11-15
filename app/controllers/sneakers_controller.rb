class SneakersController < ApplicationController
  def index
    @sneakers = Sneaker.all
  end

  def show
    @sneakers = Sneaker.all
    @sneaker = Sneaker.find(params[:id])
  end
end
