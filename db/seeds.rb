require 'faker'

Sneaker.delete_all
Brand.delete_all
Province.delete_all
Customer.delete_all

brands = [
    { :name => "Jordan", :image_path => "brands/jordan.png"},
    { :name => "Nike", :image_path => "brands/nike.png"}
]

sneakers = [
    { :name => "Air Jordan 1", :price => "239", :sale_price => "", :brand => "Jordan", :status => "new", :image_path => "sneakers/sneaker_1.jpg" },
    { :name => "Air Jordan 2", :price => "229", :sale_price => "", :brand => "Jordan", :status => "new", :image_path => "sneakers/sneaker_2.jpg" },
    { :name => "Air Jordan 3", :price => "219", :sale_price => "", :brand => "Jordan", :status => "new", :image_path => "sneakers/sneaker_3.jpg" },
    { :name => "Air Jordan 4", :price => "209", :sale_price => "", :brand => "Jordan", :status => "new", :image_path => "sneakers/sneaker_4.jpg" },
    { :name => "Air Jordan 5", :price => "199", :sale_price => "", :brand => "Jordan", :status => "new", :image_path => "sneakers/sneaker_5.jpg" },
    { :name => "Air Jordan 6", :price => "189", :sale_price => "", :brand => "Jordan", :status => "new", :image_path => "sneakers/sneaker_6.jpg" },
    { :name => "Air Jordan 7", :price => "179", :sale_price => "", :brand => "Jordan", :status => "new", :image_path => "sneakers/sneaker_7.jpg" },
    { :name => "Air Jordan 8", :price => "169", :sale_price => "", :brand => "Jordan", :status => "new", :image_path => "sneakers/sneaker_8.jpg" },
    { :name => "Air Jordan 9", :price => "159", :sale_price => "", :brand => "Jordan", :status => "new", :image_path => "sneakers/sneaker_9.jpg" },
    { :name => "Air Jordan 10", :price => "149", :sale_price => "", :brand => "Jordan", :status => "new", :image_path => "sneakers/sneaker_10.jpg" },
    { :name => "Air Jordan 11", :price => "139", :sale_price => "", :brand => "Jordan", :status => "new", :image_path => "sneakers/sneaker_11.jpg" },
    { :name => "Air Jordan 12", :price => "129", :sale_price => "", :brand => "Jordan", :status => "new", :image_path => "sneakers/sneaker_12.jpg" },
    { :name => "Air Jordan 13", :price => "119", :sale_price => "", :brand => "Jordan", :status => "new", :image_path => "sneakers/sneaker_13.jpg" },
    { :name => "Air Jordan 14", :price => "169", :sale_price => "", :brand => "Jordan", :status => "new", :image_path => "sneakers/sneaker_14.jpg" },
    { :name => "Air Max 1", :price => "159", :sale_price => "139", :brand => "Nike", :status => "sale", :image_path => "sneakers/sneaker_15.jpg" },
    { :name => "Air Max 90", :price => "149", :sale_price => "129", :brand => "Nike", :status => "sale", :image_path => "sneakers/sneaker_16.jpg" },
    { :name => "Air Max 97", :price => "139", :sale_price => "119", :brand => "Nike", :status => "sale", :image_path => "sneakers/sneaker_17.jpg" },
    { :name => "Air Max 180", :price => "129", :sale_price => "109", :brand => "Nike", :status => "sale", :image_path => "sneakers/sneaker_18.jpg" },
    { :name => "Air Max 270", :price => "119", :sale_price => "99", :brand => "Nike", :status => "sale", :image_path => "sneakers/sneaker_19.jpg" },
    { :name => "Air Max Light", :price => "109", :sale_price => "89", :brand => "Nike", :status => "sale", :image_path => "sneakers/sneaker_20.jpg" },
]

provinces = [
    { :name => "Alberta", :provincial => "0.00", :goods_and_services => "0.05", :harmonized => "0.00" },
    { :name => "British Columbia", :provincial => "0.07", :goods_and_services => "0.05", :harmonized => "0.00" },
    { :name => "Manitoba", :provincial => "0.07", :goods_and_services => "0.05", :harmonized => "0.00" },
    { :name => "New Brunswick", :provincial => "0.00", :goods_and_services => "0.00", :harmonized => "0.15" },
    { :name => "Newfoundland and Labrador", :provincial => "0.00", :goods_and_services => "0.00", :harmonized => "0.15" },
    { :name => "Northwest Territories", :provincial => "0.00", :goods_and_services => "0.05", :harmonized => "0.00" },
    { :name => "Nova Scotia", :provincial => "0.00", :goods_and_services => "0.00", :harmonized => "0.15" },
    { :name => "Nunavut", :provincial => "0.00", :goods_and_services => "0.05", :harmonized => "0.00" },
    { :name => "Ontario", :provincial => "0.00", :goods_and_services => "0.00", :harmonized => "0.13" },
    { :name => "Prince Edward Island", :provincial => "0.00", :goods_and_services => "0.00", :harmonized => "0.15" },
]

def brand(name)
    Brand.where(name: "#{name}").first
end

brands.each do |brand|
    Brand.create(
        name:       "#{brand[:name]}",
        image_path: "#{brand[:image_path]}"
    )
end

sneakers.each do |sneaker_pair|
    brand = brand(sneaker_pair[:brand])

    brand.sneakers.create(
        name:           "#{sneaker_pair[:name]}",
        description:    Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false),
        image_path:     "#{sneaker_pair[:image_path]}",
        price:          "#{sneaker_pair[:price]}",
        sale_price:     "#{sneaker_pair[:sale_price]}",
        status:         "#{sneaker_pair[:status]}"
    )
end

provinces.each do |province|
    Province.create(
        name:               "#{province[:name]}",
        provincial:         "#{province[:provincial]}",
        goods_and_services: "#{province[:goods_and_services]}",
        harmonized:         "#{province[:harmonized]}"
    )
end

puts "Created #{Brand.count} brands."
puts "Created #{Sneaker.count} sneakers."
puts "Created #{Province.count} provinces."

# AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?