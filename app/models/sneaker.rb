class Sneaker < ApplicationRecord
    has_one_attached :image
    belongs_to :brand

    paginates_per 12
end
