class Brand < ApplicationRecord
    has_one_attached :image
    has_many :sneakers

    validates :name, presence: true
    validates :name, length: { maximum: 100 }
end
