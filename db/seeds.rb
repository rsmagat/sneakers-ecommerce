require 'faker'

Sneaker.delete_all
Brand.delete_all

brands = ["Jordan", "Nike"]

sneakers = [
    { :name => "Air Jordan 1", :price => "239", :brand => "Jordan", :image_path => "sneakers/sneaker_1" },
    { :name => "Air Jordan 2", :price => "229", :brand => "Jordan", :image_path => "sneakers/sneaker_2" },
    { :name => "Air Jordan 3", :price => "219", :brand => "Jordan", :image_path => "sneakers/sneaker_3" },
    { :name => "Air Jordan 4", :price => "209", :brand => "Jordan", :image_path => "sneakers/sneaker_4" },
    { :name => "Air Jordan 5", :price => "199", :brand => "Jordan", :image_path => "sneakers/sneaker_5" },
    { :name => "Air Jordan 6", :price => "189", :brand => "Jordan", :image_path => "sneakers/sneaker_6" },
    { :name => "Air Jordan 7", :price => "179", :brand => "Jordan", :image_path => "sneakers/sneaker_7" },
    { :name => "Air Jordan 8", :price => "169", :brand => "Jordan", :image_path => "sneakers/sneaker_8" },
    { :name => "Air Jordan 9", :price => "159", :brand => "Jordan", :image_path => "sneakers/sneaker_9" },
    { :name => "Air Jordan 10", :price => "149", :brand => "Jordan", :image_path => "sneakers/sneaker_10" },
    { :name => "Air Jordan 11", :price => "139", :brand => "Jordan", :image_path => "sneakers/sneaker_11" },
    { :name => "Air Jordan 12", :price => "129", :brand => "Jordan", :image_path => "sneakers/sneaker_12" },
    { :name => "Air Jordan 13", :price => "119", :brand => "Jordan", :image_path => "sneakers/sneaker_13" },
    { :name => "Air Jordan 14", :price => "169", :brand => "Jordan", :image_path => "sneakers/sneaker_14" },
    { :name => "Air Max 1", :price => "159", :brand => "Nike", :image_path => "sneakers/sneaker_15" },
    { :name => "Air Max 90", :price => "149", :brand => "Nike", :image_path => "sneakers/sneaker_16" },
    { :name => "Air Max 97", :price => "139", :brand => "Nike", :image_path => "sneakers/sneaker_17" },
    { :name => "Air Max 180", :price => "129", :brand => "Nike", :image_path => "sneakers/sneaker_18" },
    { :name => "Air Max 270", :price => "119", :brand => "Nike", :image_path => "sneakers/sneaker_19" },
    { :name => "Air Max Light", :price => "109", :brand => "Nike", :image_path => "sneakers/sneaker_20" },
]

def brand(name)
    Brand.where(name: "#{name}").first
end

brands.each do |shoe_brand|
    brand = Brand.create(
        name: "#{shoe_brand}"
    )
end

sneakers.each do |sneaker_pair|
    brand = brand(sneaker_pair[:brand])

    brand.sneakers.create(
        name: "#{sneaker_pair[:name]}",
        description: Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false),
        image_path: "#{sneaker_pair[:image_path]}",
        price: Faker::Commerce.price(range: 110..240, as_string: true)
    )
end

puts "Created #{Brand.count} brands."
puts "Created #{Sneaker.count} sneakers."