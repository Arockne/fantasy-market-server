require 'faker'
puts "🌱 Seeding spices..."

potion_shop = Shop.create(name: 'Potions Emporium')
weapon_smith = Shop.create(name: 'Weapons')
armor_smith = Shop.create(name: 'Armor')
tools = Shop.create(name: 'Tools & Such')

#potions
Item.create(name: 'Healing Potion', type: 'potion', pounds: 1, cost: rand(1..50), shop_id: potion_shop.id, desc: Faker::Lorem.sentence)
Item.create(name:'Greater Strength', type: 'potion', pounds: 1, cost: rand(1..50), shop_id: potion_shop.id, desc: Faker::Lorem.sentence)
Item.create(name: 'Black Sap', type: 'potion', pounds: 1, cost: rand(1..50), shop_id: potion_shop.id, desc: Faker::Lorem.sentence)
Item.create(name: 'Lesser Strength', type: 'potion', pounds: 1, cost: rand(1..50), shop_id: potion_shop.id, desc: Faker::Lorem.sentence)
Item.create(name: 'Invisiblity', type: 'potion', pounds: 1, cost: rand(1..50), shop_id: potion_shop.id, desc: Faker::Lorem.sentence)
Item.create(name: 'Sleep', type: 'potion', pounds: 1, cost: rand(1..50), shop_id: potion_shop.id, desc: Faker::Lorem.sentence)
Item.create(name: 'Greater Speed', type: 'potion', pounds: 1, cost: rand(1..50), shop_id: potion_shop.id, desc: Faker::Lorem.sentence)
Item.create(name: 'Growth', type:, pounds: 1, cost: rand(1..50), shop_id:, desc: Faker::Lorem.sentence)

#weapons

#armor

#

puts "✅ Done seeding!"
