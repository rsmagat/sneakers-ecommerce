class SneakersController < ApplicationController
  def index
    @sneakers = Sneaker.all
  end

  def show
    @sneakers = Sneaker.all
    @sneaker = Sneaker.find(params[:id])
  end

  def sale
    @sale = Sneaker.where("status LIKE ?", "sale")
  end

  def new
    @new = Sneaker.where("status LIKE ?", "new")
  end
end
