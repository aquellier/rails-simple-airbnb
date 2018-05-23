# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Flat.destroy_all

puts 'Creating flats...'
flats_attributes = [
  {
    name: 'Amazing Flat un Ménilmontant',
    address: 'PARIS',
    description: 'Magnifique appartement, à la fois confortable, chaleureux et spacieux. Il sera parfait pour un séjour en couple !',
    price_per_night: 40,
    number_of_guests: 3
  },
  {
    name: 'Light & Spacious Garden Flat London',
    address: 'LONDON',
    description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
    price_per_night: 75,
    number_of_guests: 5
  },
  {
    name: 'A beautiful villa in North Iceland',
    address: 'IRELAND',
    description: 'A new spacious villa, one floor. All commodities, jacuzzi and beautiful scenery. Ideal for families or friends. The villa is located in the exclusive residence area of Akureyri, the Northern capital of Iceland, offers easy access not only to the center of Akureyri but also all the interesting sites surrounding this Northern capital. ',
    price_per_night: 200,
    number_of_guests: 8
  },
  {
    name: 'Old Loft-Style Studio',
    address: 'BARCELONA',
    description: "Unwind on the balcony of a 130-year-old building in the heart of the Barcelona's oldest district. Enjoy open-plan, loft-style living with neutral decor, open shelving, rustic exposed-beam ceilings.",
    price_per_night: 150,
    number_of_guests: 2
  },
  {
    name: 'Malibu Dream Airstream',
    address: 'LA COUNTY',
    description: 'Escape civilization to this incredible and peaceful getaway! Reconnect with nature and disconnect from technology on your own private deck surrounded by pristine and untouched nature just a short drive away from LA.',
    price_per_night: 450,
    number_of_guests: 2
  }
]
Flat.create!(flats_attributes)
puts 'Finished!'

