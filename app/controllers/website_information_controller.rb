class WebsiteInformationController < ApplicationController
    def about
        @brands = Brand.all
        @about = WebsiteInformation.where("name LIKE ?", "About")
    end

    def contact
        @brands = Brand.all
        @contact = WebsiteInformation.where("name LIKE ?", "Contact")
    end
end
