
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ user_name: "Star Wars" }, { user_name: "Lord of the Rings" }])
#   Character.create(user_name: "Luke", movie: movies.first)
puts "Seeding ..."

#all seeding to do with Asset 
asset1 = Asset.create(
    user_id:1 ,
    user_name: "HP Envy 15" ,
    category: "Laptop",
    description: "Intel core i7, 16GB RAM, 512GB SSD",
    quantity: "5",
    status: "InStock"
 )
 asset2 = Asset.create(
    user_id:2 ,
    user_name: "DELL inspiron 15-3000",
    category: "Laptop",
    description: "core i5, 8GB RAM, 512GB SSD" ,
    quantity: "9",
    status: "OutStock"
 )
 asset3 = Asset.create(
    user_id: 3,
    user_name: "ASUS Vivo-Book 14",
    category: "Laptop",
    description: "core i5, 8GB RAM, 256GB SSD",
    quantity: "7",
    status: "InStock"
 )

#all seeding to do with Request 
 request1 = Request.create(
    user_id: 4,
    asset_id: asset1.id,
    user_name: "HP Victus 16",
    category: "Laptop",
    quantity: 2,
    status: "Approved",
    urgency: "Urgent"
 )
 request2 = Request.create(
    user_id: 5,
    asset_id: asset3.id ,
    user_name: "HP ProBook X360",
    category: "Laptop",
    quantity: 5,
    status: "Rejected",
    urgency: "Not Urgent"
 )
 request3 = Request.create(
    user_id: 6,
    asset_id: asset2.id ,
    user_name: "Lenovo Yoga 720",
    category: "Laptop",
    quantity: 4,
    status: "Pending",
    urgency: "Urgent"
 )

#All seeding to do with User
 user1 = User.create(
    user_name: "John",
    email: "johnbing@gmail.com",
    role: "Admin",
    password: "Apple"
 )
 user2 = User.create(
    user_name: "Jane",
    email: "janebuffay@gmail.com",
    role: "Manager",
    password: "Pear"
 )
 user3 = User.create(
    user_name: "Ross",
    email: "rossgeller@gmail.com",
    role: "Employee",
    password: "Pineapple"
 )
 #All seeding to do with Employees 
 employee1 = Employee.create(
      employee_id:7,
      employee_name: "Ednah Miguel",
      date_of_birth: "Ninety Eight",
      joining_date:  "Two Five",
      leaving_date:  "One Nine",
      password_digest:"Makemake"
 )

 employee2 = Employee.create(
   employee_id:8,
   employee_name: "Tanya Osano",
   date_of_birth: "Ninety Eight",
   joining_date:  "Two Five",
   leaving_date:  "One Nine",
   password_digest:"Mangorine"
)

employee3 = Employee.create(
   employee_id:9,
   employee_name: "Brian Kamau"
   date_of_birth: "Ninety Eight",
   joining_date:  "Two Five",
   leaving_date:  "One Nine",
   password_digest:"Apollo"
)


 puts "Done Seeding..."