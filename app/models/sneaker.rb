class Sneaker < ApplicationRecord
    has_one_attached :image
    belongs_to :brand

    validates :name, :description, :brand_id, :price, presence: true
    validates :name, length: { maximum: 100 }
    validates :sale_price, allow_nil: true, numericality: { only_integer: true }
    validates :brand_id, :price, numericality: true
    validates :price, numericality: { only_integer: true }
    
    paginates_per 12
end
