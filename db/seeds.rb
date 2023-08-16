require 'faker'

myArray = ["chinese", "italian", "japanese", "french", "belgian"]

puts 'Clearing db...'
Restaurant.delete_all
puts 'db cleared'

puts 'seeding...'
5.times do
  restaurant = Restaurant.new(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: myArray[rand(5)]
  )
  restaurant.save!
  puts "#{restaurant.name} created successfully!"
end
puts 'seeding completed!'
