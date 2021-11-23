class Province < ApplicationRecord
    has_many :customers

    validates :name, :provincial, :goods_and_services, :harmonized, presence: true
    validates :name, length: { maximum: 100 }
    validates :provincial, :goods_and_services, :harmonized, numericality: true
    validates :provincial, :goods_and_services, :harmonized, :numericality => { less_than: 1, greater_than_or_equal_to: 0 }
end
