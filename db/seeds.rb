# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.destroy_all 

User.create!([{
  email: "mike@aol.com",
  encrypted_password: "password",
  username: "mike"
},
{
  email: "logan@aol.com",
  encrypted_password: "password",
  username: "logan"
},
{
  email: "kendall@aol.com",
  encrypted_password: "password",
  username: "kendall"
},
{
  email: "roman@aol.com",
  encrypted_password: "password",
  username: "roman"
},
{
  email: "shiv@aol.com",
  encrypted_password: "password",
  username: "shiv"
}])