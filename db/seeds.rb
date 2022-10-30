# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Drink.destroy_all 

    d1 = Drink.create name: 'sangria', ingredients: 'orange, lemon, seasonal fruit, maple syrup, red wine, brandy, ice', mixologist_id: 'someid', image: 'someimageurl'
    d2 = Drink.create name: 'moijto', ingredients: 'sugar syrip, lime juice, watermellon, mint leaves, spirit, soda water', mixologist_id: 'someid', image: 'someimageurl'
    d3 = Drink.create name: 'negroni', ingredients: 'gin, campari, sweet vermouth', mixologist_id: 'someid', image: 'someimageurl'
    d4 = Drink.create name: 'salty dog', ingredients: 'gin, sparking, grapefruit soda, lime juice', mixologist_id: 'someid', image: 'someimageurl'
    d5 = Drink.create name: 'somename', ingredients: 'rye whiskey, sweet vermouth, bitters', mixologist_id: 'someid', image: 'someimageurl'

puts "#{Drink.count} drinks created"

Mixologist.destroy_all

    m1 = Mixologist.create name: 'yasmin', image: 'someimageurl'
    m2 = Mixologist.create name: 'dan', image: 'someimageurl'
    m3 = Mixologist.create name: 'bek', image: 'someimageurl'
    m4 = Mixologist.create name: 'micaela', image: 'someimageurl'

puts "#{Mixologist.count} mixologists created"

#### Associations

puts "Mixologists and their drinks"

m1.drinks << d1 << d2 << d3 
m2.drinks << d4 << d5 

