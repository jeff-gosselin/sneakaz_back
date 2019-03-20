Shopper.destroy_all
Order.destroy_all
OrderItem.destroy_all
Item.destroy_all


# Shoppers
jeff = Shopper.create({username: 'Jeff', password_digest: '123abc', email: 'jeff@gmail.com', shipping_address: '123 Some St., SomeTown, NY 12345', billing_address: '123 Some St., SomeTown, NY 12345'})
meghan = Shopper.create({username: 'Meghan', password_digest: '456xyz', email: 'meghan@gmail.com', shipping_address: '456 Any Dr., AnyTown, NY 56789', billing_address: '456 Any Dr., AnyTown, NY 56789'})

#############################################

# Items
adidas_01 = Item.create({brand: 'adidas', name: 'Adidas Sneaker Freaker', category: 'mens', price: 179.99, image: 'adidas_01.png'})

adidas_02 = Item.create({brand: 'adidas', name: 'Adidas X FootPatrol', category: 'mens', price: 119.99, image: 'adidas_02.png'})

adidas_03 = Item.create({brand: 'adidas', name: 'Adidas 595 STT', category: 'womens', price: 129.99, image: 'adidas_03.png'})

saucony_01 = Item.create({brand: 'saucony', name: 'Saucony Guide ISO', category: 'womens', price: 99.99, image: 'saucony_01.png'})

saucony_02 = Item.create({brand: 'saucony', name: 'Saucony Shadow 5000', category: 'womens', price: 139.99, image: 'saucony_02.png'})

puma_01 = Item.create({brand: 'puma', name: 'Puma X Ader 2', category: 'mens', price: 109.99, image: 'puma_01.png'})

puma_02 = Item.create({brand: 'puma', name: 'Puma Blaze of Glory', category: 'womens', price: 199.99, image: 'puma_02.png'})

puma_03 = Item.create({brand: 'puma', name: 'Puma RS-X Toys', category: 'womens', price: 169.99, image: 'puma_03.png'})

puma_04 = Item.create({brand: 'puma', name: 'Puma RS-X Toys', category: 'mens', price: 169.99, image: 'puma_04.png'})

nike_01 = Item.create({brand: 'nike', name: 'Nike Air Max Plus', category: 'mens', price: 185.99, image: 'nike_01.png'})

nike_02 = Item.create({brand: 'nike', name: 'Nike Air Max 97', category: 'mens', price: 69.99, image: 'nike_02.png'})

nike_03 = Item.create({brand: 'nike', name: 'Nike Sprinter', category: 'mens', price: 149.99, image: 'nike_03.png'})

#############################################

# Orders
order_01 = Order.create({shopper_id: jeff.id, total: 419.97, complete: true})
order_02 = Order.create({shopper_id: jeff.id, total: 569.96, complete: true})
order_03 = Order.create({shopper_id: meghan.id, total: 129.99, complete: true})

#############################################

# Order Items
ordered_item_01 = OrderItem.create({item_id: nike_01.id, order_id: order_01.id, qty: 2, total: 239.98, size: "11", color: "blue", image: "/images/nike/nike_01.jpg"})

ordered_item_02 = OrderItem.create({item_id: adidas_01.id, order_id: order_01.id, qty: 1, total: 179.99, size: "11", color: "gray", image: "/images/adidas/adidas_01.jpg"})

ordered_item_03 = OrderItem.create({item_id: puma_01.id, order_id: order_03.id, qty: 1, total: 129.99, size: "9", color: "blue", image: "/images/puma/puma_01.jpg"})

ordered_item_04 = OrderItem.create({item_id: puma_01.id, order_id: order_02.id, qty: 3, total: 389.97, size: "11", color: "green", image: "/images/puma/puma_01.jpg"})

ordered_item_05 = OrderItem.create({item_id: adidas_01.id, order_id: order_02.id, qty: 1, total: 179.99, size: "11", color: "green", image: "/images/adidas/adidas_01.jpg"})

#############################################



#############################################

# create_table "shoppers", force: :cascade do |t|
# 	t.string "username"
# 	t.string "password_digest"
# 	t.string "email"
# 	t.string "shipping_address"
# 	t.string "billing_address"
# 	t.datetime "created_at", null: false
# 	t.datetime "updated_at", null: false
# end

# create_table "order_items", force: :cascade do |t|
# 	t.integer "order_id"
# 	t.integer "item_id"
# 	t.integer "qty"
# 	t.float "total"
# 	t.datetime "created_at", null: false
# 	t.datetime "updated_at", null: false
# 	t.string "size"
# 	t.string "image"
# 	t.string "color"
# end
#
# create_table "orders", force: :cascade do |t|
# 	t.integer "shopper_id"
# 	t.float "total"
# 	t.boolean "complete"
# 	t.datetime "created_at", null: false
# 	t.datetime "updated_at", null: false
# end
#
