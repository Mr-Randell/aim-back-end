# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Seeding ..."

asset1 = Asset.create(
    user_id:1 ,
    name: "HP Envy 15" ,
    category: "Laptop",
    description: "Intel core i7, 16GB RAM, 512GB SSD",
    quantity: "5"
 )
 asset2 = Asset.create(
    user_id:2 ,
    name: "DELL inspiron 15-3000",
    category: "Laptop",
    description: "core i5, 8GB RAM, 512GB SSD" ,
    quantity: "9"
 )
 
 request1 = Request.create(
    user_id: 3,
    asset_id: asset18.id,
    name: "HP Victus 16",
    category: "Laptop",
    quantity: 2,
    status: "Approved",
    urgency: "Urgent"
 )
 request2 = Request.create(
    user_id: 4,
    asset_id: asset11.id ,
    name: "HP ProBook X360",
    category: "Laptop",
    quantity: 5,
    status: "Rejected",
    urgency: "Not Urgent"
 )
 
 user1 = User.create(
    name: "John",
    email: "johnbing@gmail.com",
    role: "Admin",
    password: "Apple"
 )
 user2 = User.create(
    name: "Jane",
    email: "janebuffay@gmail.com",
    role: "Manager",
    password: "Pear"
 )
 puts "Done Seeding..."