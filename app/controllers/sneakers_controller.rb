class SneakersController < ApplicationController
  def index
    @sneakers = Sneaker.all
  end
end
