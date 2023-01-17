# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or create!d alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create!([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create!(name: "Luke", movie: movies.first)
# id
# user_id
# name
# category
# description
# quantity
puts "Seeding..."
 User.create!(
   username: "Admin",
   email: "admin@example.com",
   role: "Admin",
   password: "password"
)
 User.create!(
   username: "Jane",
   email: "janebuffay@gmail.com",
   role: "Manager",
   password: "Pear"
)

Employee.create!(
   name: "Hafsa hafsa",
   location: "Kakamega",
   joining_date:"01/01/2012",
   job_title:"Librarian",
)

 Employee.create!(
   name: "Randell Randelle",
   location: "Mombasa",
   joining_date:"12/10/2005",
   job_title:"Technician",
)

 Asset.create!(
   # user_id:1 ,
   price:200,
   name: "HP Envy 15" ,
   category_id: "1",
   description: "Intel core i7, 16GB RAM, 512GB SSD",
   quantity: 5,
   status:"Assigned",
   location:"Malaysia",
   released_year:"2022",
   image_url:"https://img.freepik.com/free-psd/laptop-psd-mockup-with-gradient-led-light_53876-138283.jpg?w=900&t=st=1673870564~exp=1673871164~hmac=f0b207e0338f71d239fb9b607e63b22853dfa8f059bb4b97fd550b2e40500a82",
)

Asset.create!(
   # user_id:2 ,
   price:200,
   name: "DELL inspiron 15-3000",
   category_id: "2",
   description: "core i5, 8GB RAM, 512GB SSD" ,
   quantity: 9,
   status:"Assigned",
   location:"Malaysia",
   released_year:"2022",
   image_url:"https://img.freepik.com/free-psd/laptop-psd-mockup-with-gradient-led-light_53876-138283.jpg?w=900&t=st=1673870564~exp=1673871164~hmac=f0b207e0338f71d239fb9b607e63b22853dfa8f059bb4b97fd550b2e40500a82"
)

 Request.create!(
   user_id: 1,
   # price:200,
   asset_id:1,
   # name: "HP Victus 16",
   quantity: 2,
   status: "Approved",
   urgency: "Urgent"
)
 Request.create!(
   user_id: 2,
   # price:200,
   asset_id: 2,
   # name: "HP ProBook X360",
   quantity: 5,
   status: "Rejected",
   urgency: "Not Urgent"
)



 Category.create!(
   category:"Laptop",
)

puts "Done Seeding..."