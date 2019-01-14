# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Sport.destroy_all

['basketball','football','badminton','tennis'].each do |name|
  Sport.create(name: name, photo: "#{name}.jpg")
end

Field.destroy_all

Field.create(sport_id: 1, name: 'basketball 1 half 1', capacity: 8, price_per_hour: 20)
Field.create(sport_id: 1, name: 'basketball 1 half 2', capacity: 8, price_per_hour: 20)
Field.create(sport_id: 1, name: 'basketball 1 full', capacity: 15, price_per_hour: 40)
Field.create(sport_id: 1, name: 'basketball 2 full', capacity: 15, price_per_hour: 40)
Field.create(sport_id: 1, name: 'basketball 2 half 1', capacity: 8, price_per_hour: 20)
Field.create(sport_id: 1, name: 'basketball 2 half 2', capacity: 8, price_per_hour: 20)
Field.create(sport_id: 3, name: 'badminton 1', capacity: 5, price_per_hour: 30)
Field.create(sport_id: 3, name: 'badminton 2', capacity: 5, price_per_hour: 30)


# Booking_slot.destroy_all
# Booking_slot.create()
