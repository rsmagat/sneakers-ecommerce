class Brand < ApplicationRecord
    has_one_attached :image
    has_many :sneakers
end
