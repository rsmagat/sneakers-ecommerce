class WebsiteInformation < ApplicationRecord
    validates :name, :description, presence: true
end
