# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'
require 'open-uri'

# Delete existing records
Booking.delete_all
Toothbrush.delete_all
User.delete_all

url_classic = ["https://plus.unsplash.com/premium_photo-1676635271060-7aa7483781c3?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=880&q=80", "https://images.unsplash.com/photo-1617984161716-189c889bd474?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=687&q=80", "https://images.unsplash.com/photo-1589365252845-092198ba5334?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=687&q=80", "https://images.unsplash.com/photo-1532120308961-b163b7ae0791?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=687&q=80", "https://images.unsplash.com/photo-1634082980789-f93655ed39d2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=764&q=80", "https://images.unsplash.com/photo-1574269909489-99666f1fefdc?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=875&q=80", "https://images.unsplash.com/photo-1627435602551-b6e78f6cb123?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=700&q=80", "https://images.unsplash.com/photo-1593240829601-4ee2567bb205?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=687&q=80", "https://images.unsplash.com/photo-1532119421444-cb013aaed2e7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=687&q=80", "https://images.unsplash.com/photo-1637503434402-0491c896566b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=580&q=80", "https://images.unsplash.com/photo-1550985543-f1ea83691cd8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=901&q=80","https://images.unsplash.com/photo-1609840112855-9ab5ad8f66e4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80", "https://images.unsplash.com/photo-1634082979697-9d26b277fb7b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=764&q=80", "https://images.unsplash.com/photo-1570283698449-7ab2095b6f28?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80"]
url_electric = ["https://images.unsplash.com/photo-1559592892-19db4235d786?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjN8fHRvb3RoYnJ1c2h8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=600&q=60", "https://images.unsplash.com/photo-1575325342632-92615b50d3e2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80", "https://plus.unsplash.com/premium_photo-1664544673207-b23695e7f2fa?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=642&q=80", "https://images.unsplash.com/photo-1612181819081-950d35f4d826?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=743&q=80", "https://images.unsplash.com/photo-1575325345210-a65324e66537?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80", "https://images.unsplash.com/photo-1593010898374-1093fb4b5db4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=888&q=80", "https://images.unsplash.com/photo-1575325343284-b485bff5230e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=781&q=80", "https://plus.unsplash.com/premium_photo-1664544673658-538da91c8293?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=675&q=80", "https://images.unsplash.com/photo-1559592893-678d6fc3b776?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1079&q=80"]
descriptions = [
  "Perfect for your daily oral care routine.",
  "Designed for maximum comfort and effectiveness.",
  "Experience a fresh and clean feeling.",
  "Ergonomically designed for easy handling.",
  "Gentle yet effective cleaning action.",
  "Promotes better oral health.",
  "Convenient and hygienic for travel purposes.",
  "Get a brighter smile with every use.",
  "Experience a superior brushing experience.",
  "Keep your teeth and gums healthy.",
  "Suitable for the whole family.",
  "Provides a thorough clean with every brush.",
  "Achieve a dentist-like clean at home.",
  "Enjoy a confident smile with our toothbrush.",
  "Efficiently removes plaque and stains.",
  "Designed with precision and quality in mind.",
  "Easy to use and maintain.",
  "A reliable choice for your dental care needs.",
  "Experience a gentle yet thorough clean.",
  "Promotes good oral hygiene habits."
]

titles = [
  "Sonic Clean",
  "Power Scrub",
  "Fresh Breeze",
  "Gentle Care",
  "Minty Fresh",
  "Sparkling Clean",
  "Whisper White",
  "Silky Soft",
  "Vibrant Smile",
  "Pearly Whites",
  "Glowing Grin",
  "Radiant Clean",
  "Effortless Brush",
  "Sleek Shine",
  "Polished Pearls",
  "Smooth Glide",
  "Shimmering Teeth",
  "Dazzling Bright",
  "Eco-Friendly Clean",
  "Precision Brush"
]


20.times do
  user = User.create(
    email: Faker::Internet.unique.email,
    password: 'password',
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name
  )
  puts "Created user: #{user.email}"
end
User.create(
  email: "titouanhir"
)

url_electric.each_with_index do |url, index|
  toothbrush = Toothbrush.create!(
    category: "Electric",
    price: Faker::Commerce.price(range: 5..50.0),
    user_id: User.pluck(:id).sample,
    content: descriptions.sample,
    title: titles.sample
  )
  file = URI.open(url)
  toothbrush.photo.attach(io: file, filename: "electric#{index + 1}.png", content_type: "image/png")
  puts "The toothbrush #{toothbrush.id} was created"
end

url_classic.each_with_index do |url, index|
  toothbrush = Toothbrush.create!(
    category: "Standard",
    price: Faker::Commerce.price(range: 5..50.0),
    user_id: User.pluck(:id).sample,
    content: descriptions.sample,
    title: titles.sample
  )
  file = URI.open(url)
  toothbrush.photo.attach(io: file, filename: "electric#{index + 1}.png", content_type: "image/png")
  puts "The toothbrush #{toothbrush.id} was created"
end
