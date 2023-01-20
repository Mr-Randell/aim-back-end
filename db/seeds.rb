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
User.destroy_all
Employee.destroy_all
Asset.destroy_all
Request.destroy_all
Category.destroy_all

puts "🌱 Seeding spices..."
#User Start Here 
 User.create!(
   username: "Admin",
   email: "admin@example.com",
   role: "admin",
   password: "password",
   companyname:"StarLink",
   phonenumber:71234567,
   companysize:20,
   industry:"Techno Startup"
)
 User.create!(
   username: "Jane",
   email: "janebuffay@gmail.com",
   role: "user",
   password: "Pear",
   companyname:"Maskstar",
   phonenumber:726933823,
   companysize:10,
   industry:"IOT Startup"
)

User.create!(
   username: "Miguel",
   email: "miguelbuffaynah@gmail.com",
   role: "user",
   password: "Orange",
   companyname:"BoringCompany",
   phonenumber:726933823,
   companysize:25,
   industry:"Twitter"
)

User.create!(
   username: "Mike",
   email: "mikebaraza@gmail.com",
   role: "Admin",
   password: "Pear",
   companyname:"WeMadeIt",
   phonenumber:726933823,
   companysize:10,
   industry:"Facebook"
)
User.create!(
   username: "Randell",
   email: "randellmiley@gmail.com",
   role: "user",
   password: "Tainwan",
   companyname:"SupriseX",
   phonenumber:726433523,
   companysize:82,
   industry:"Google"
)
User.create!(
   username: "Hatric",
   email: "hatricbafanab22@gmail.com",
   role: "user",
   password: "flowers",
   companyname:"Maskstar",
   phonenumber:720933852,
   industry:"ElonMake"
)
User.create!(
   username: "Mitchelle",
   email: "mitchelleotieno@gmail.com",
   role: "Admin",
   password: "wewise",
   companyname:"Maskstar",
   phonenumber:726933823,
   companysize:10,
   industry:"Tothemoon"
)

#Employee Start Here 
Employee.create!(
   name: "Juma Allan",
   location: "Kakamega",
   joining_date:"01/01/2012",
   job_title:"Librarian",
)

 Employee.create!(
   name: "Abado Jack",
   location: "Mombasa",
   joining_date:"12/10/2005",
   job_title:"Technician",
)
Employee.create!(
   name: "Tabitha Kavyu",
   location: "Nigeria",
   joining_date:"12/10/2003",
   job_title:"QA Engineer",
)
Employee.create!(
   name: "Ronny Otieno",
   location: "Tanzania",
   joining_date:"12/10/2004",
   job_title:"DevsOp",
)
Employee.create!(
   name: "Wayne Gakuo",
   location: "Mombasa",
   joining_date:"12/10/2006",
   job_title:"BackEnd Engineer",
)
Employee.create!(
   name: "Ivy Walobwa",
   location: "Eldoret",
   joining_date:"12/10/2003",
   job_title:"FullStack Engineer",
)
Employee.create!(
   name: "David Odari",
   location: "Nairobi",
   joining_date:"12/10/2005",
   job_title:"Mobile Developer",
)

#Assets Start Here 

 Asset.create!(
   # user_id:1 ,
   price:200000,
   name: "HP Envy 15" ,
   category_id: 1,
   description: "Intel core i7, 16GB RAM, 512GB SSD",
   quantity: 1,
   status:"Assigned",
   location:"Malaysia",
   released_year:"2022",
   image_url:"https://img.freepik.com/free-psd/laptop-psd-mockup-with-gradient-led-light_53876-138283.jpg?w=900&t=st=1673870564~exp=1673871164~hmac=f0b207e0338f71d239fb9b607e63b22853dfa8f059bb4b97fd550b2e40500a82",
)

Asset.create!(
   # user_id:2 ,
   price:113699,
   name: "DELL inspiron 15-3000",
   category_id: 2,
   description: "core i5, 8GB RAM, 512GB SSD" ,
   quantity: 2,
   status:"Assigned",
   location:"Kenya",
   released_year:"2022",
   image_url:"https://img.freepik.com/free-photo/researcher-working-new-self-driving-car-model_53876-98093.jpg?w=996&t=st=1674207814~exp=1674208414~hmac=3a5286e14577b969847d0a698acf3f830dd626041d6f551fc5080d6d4f97a3cd"
)
Asset.create!(
   # user_id:2 ,
   price:130000,
   name: "HP ProBook X360",
   category_id: 2,
   description: "core i5, 8GB RAM, 512GB SSD" ,
   quantity: 9,
   status:"Assigned",
   location:"Malaysia",
   released_year:"2022",
   image_url:"https://img.freepik.com/premium-photo/black-desk-laptop-computer-with-color-pink-purple-light-display_37129-939.jpg?w=1380"
)
Asset.create!(
   # user_id:2 ,
   price:150000,
   name: "DELL inspiron 15-3000",
   category_id: 2,
   description: "core i5, 8GB RAM, 512GB SSD" ,
   quantity: 9,
   status:"Assigned",
   location:"Malaysia",
   released_year:"2022",
   image_url:"https://img.freepik.com/free-psd/laptop-psd-mockup-with-gradient-led-light_53876-138283.jpg?w=900&t=st=1673870564~exp=1673871164~hmac=f0b207e0338f71d239fb9b607e63b22853dfa8f059bb4b97fd550b2e40500a82"
)
Asset.create!(
   # user_id:2 ,
   price:60000,
   name: "DELL inspiron 15-3000",
   category_id: 2,
   description: "core i5, 8GB RAM, 512GB SSD" ,
   quantity: 9,
   status:"Assigned",
   location:"Malaysia",
   released_year:"2022",
   image_url:"https://img.freepik.com/free-psd/laptop-psd-mockup-with-gradient-led-light_53876-138283.jpg?w=900&t=st=1673870564~exp=1673871164~hmac=f0b207e0338f71d239fb9b607e63b22853dfa8f059bb4b97fd550b2e40500a82"
)
Asset.create!(
   # user_id:2 ,
   price:45000,
   name: "DELL inspiron 15-3000",
   category_id: 2,
   description: "core i5, 8GB RAM, 512GB SSD" ,
   quantity: 9,
   status:"Assigned",
   location:"Malaysia",
   released_year:"2022",
   image_url:"https://img.freepik.com/free-psd/laptop-psd-mockup-with-gradient-led-light_53876-138283.jpg?w=900&t=st=1673870564~exp=1673871164~hmac=f0b207e0338f71d239fb9b607e63b22853dfa8f059bb4b97fd550b2e40500a82"
)
Asset.create!(
   # user_id:2 ,
   price:82000,
   name: "DELL inspiron 15-3000",
   category_id: 2,
   description: "core i5, 8GB RAM, 512GB SSD" ,
   quantity: 9,
   status:"Assigned",
   location:"Malaysia",
   released_year:"2022",
   image_url:"https://img.freepik.com/free-psd/laptop-psd-mockup-with-gradient-led-light_53876-138283.jpg?w=900&t=st=1673870564~exp=1673871164~hmac=f0b207e0338f71d239fb9b607e63b22853dfa8f059bb4b97fd550b2e40500a82"
)
Asset.create!(
   # user_id:2 ,
   price:47500,
   name: "DELL inspiron 15-3000",
   category_id: 2,
   description: "core i5, 8GB RAM, 512GB SSD" ,
   quantity: 9,
   status:"Assigned",
   location:"Malaysia",
   released_year:"2022",
   image_url:"https://www.shutterstock.com/image-photo/belgrade-serbia-may-28-2020-260nw-1757083154.jpg"
)
Asset.create!(
   # user_id:2 ,
   price:35700,
   name: "DELL inspiron 15-3000",
   category_id: 2,
   description: "core i5, 8GB RAM, 512GB SSD" ,
   quantity: 9,
   status:"Assigned",
   location:"Malaysia",
   released_year:"2022",
   image_url:"https://img.freepik.com/free-psd/laptop-psd-mockup-with-gradient-led-light_53876-138283.jpg?w=900&t=st=1673870564~exp=1673871164~hmac=f0b207e0338f71d239fb9b607e63b22853dfa8f059bb4b97fd550b2e40500a82"
)
#Request Start Here 
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
   quantity: 1,
   status: "Rejected",
   urgency: "Urgent"
)

Request.create!(
   user_id: 3,
   # price:200,
   asset_id: 3,
   # name: "HP ProBook X360",
   quantity: 2,
   status: "Pending",
   urgency: "Not Urgent"
)

Request.create!(
   user_id: 4,
   # price:200,
   asset_id: 4,
   quantity: 1,
   status: "Approved",
   urgency: "Urgent"
)



 Category.create!(
   category:"Laptop",
)


Category.create!(
   category:"Servers",
)


Category.create!(
   category:"Desktop",
)
puts "✅ Done seeding!"