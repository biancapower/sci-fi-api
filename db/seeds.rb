# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
franchises = ["Dr Who", "Stargate"]

franchises.each do |franchise|
	Franchise.create(name: franchise)
end

# Dr Who
10.times do
	Quote.create( 
		body: Faker::TvShows::DrWho.unique.quote,
		franchise_id: 1
	)
end

# Stargate
10.times do
	Quote.create( 
		body: Faker::TvShows::Stargate.unique.quote,
		franchise_id: 2
	)
end