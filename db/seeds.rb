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
    user_name: "HP Envy 15" ,
    category: "Laptop",
    description: "Intel core i7, 16GB RAM, 512GB SSD",
    quantity: "5"
 )
 asset2 = Asset.create(
    user_id:2 ,
    user_name: "DELL inspiron 15-3000",
    category: "Laptop",
    description: "core i5, 8GB RAM, 512GB SSD" ,
    quantity: "9"
 )
 
 request1 = Request.create(
    user_id: 3,
    asset_id: asset1.id,
    name: "HP Victus 16",
    category: "Laptop",
    quantity: 2,
    status: "Approved",
    urgency: "Urgent"
 )
 request2 = Request.create(
    user_id: 4,
    asset_id: asset2.id ,
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

 employee1 = Employee.create(
   employee_id:5,
   employee_name:"Biran Montana",
   date_of_birth:"15/10/1998",
   joining_date:"06/1/2012",
   leaving_data:"13/07/2020",
   password_digest:"Makemake",
 )

 employee2 = Employee.create(
   employee_id:6,
   employee_name:"Bridget Monari",
   date_of_birth:"12/02/2002",
   joining_date:"09/06/2013",
   leaving_data:"15/01/2023",
   password_digest:"Wapmap",
 )

 puts "Done Seeding..."