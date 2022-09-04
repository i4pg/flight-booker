# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

10.times do
  sample = Airports.all.sample
  Airport.create(iata: sample.iata, name: sample.name, city: sample.city, country: sample.country)
end

100.times do
  Flight.create(date: Date.today + rand(2..5000), duration: rand(2..20).to_s + ' hours', departure_airport_id: rand(1..10),
                arrival_airport_id: rand(1..10))
end
