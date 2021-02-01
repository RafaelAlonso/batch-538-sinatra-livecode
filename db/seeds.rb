require "faker"

puts "Starting!"
20.times do
  Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_name,
    category: Faker::Restaurant.type,
    votes: rand(0..5)
  )
end
puts "Finished!"
