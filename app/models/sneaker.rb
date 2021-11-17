class Sneaker < ApplicationRecord
    belongs_to :brand

    paginates_per 12
end
