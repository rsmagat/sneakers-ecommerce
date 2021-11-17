class SneakersController < ApplicationController
  def index
    @sneakers = Sneaker.includes(:brand).page params[:page]
    @brands = Brand.all
  end

  def show
    @sneakers = Sneaker.all
    @sneaker = Sneaker.find(params[:id])
    @brands = Brand.all
  end

  def sale
    @sale = Sneaker.where("status LIKE ?", "sale").page params[:page]
    @brands = Brand.all
  end

  def new
    @new = Sneaker.where("status LIKE ?", "new").page params[:page]
    @brands = Brand.all
  end

  def search
    @brands = Brand.all.page params[:page]

    wildcard_search = "%#{params[:keywords]}%"
    brands = "#{params[:brands]}"

    if params[:brands] == ""
        @sneakers = Sneaker.where("name LIKE ?", wildcard_search)
        @sneakers_pagination = Sneaker.where("name LIKE ?", wildcard_search).page params[:page]
    else
        @sneakers = Sneaker.where("name LIKE ? AND brand_id = ?", wildcard_search, brands)
        @sneakers_pagination = Sneaker.where("name LIKE ? AND brand_id = ?", wildcard_search, brands).page params[:page]
    end
  end
end
