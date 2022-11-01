# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Invitation.destroy_all
User.destroy_all 


User.create!([{
  email: "mike@aol.com",
  password: "password",
  username: "mike"
},
{
  email: "logan@aol.com",
  password: "password",
  username: "logan"
},
{
  email: "kendall@aol.com",
  password: "password",
  username: "kendall"
},
{
  email: "roman@aol.com",
  password: "password",
  username: "roman"
},
{
  email: "shiv@aol.com",
  password: "password",
  username: "shiv"
}])

# Invitation.create!(user_id: User.find_by(username: "mike").id, friend_id: User.find_by(username: "logan").id, confirmed: true)

Invitation.create!([{
  user_id: User.find_by(username: "mike").id,
  friend_id: User.find_by(username: "logan").id,
  confirmed: true
},
{
  user_id: User.find_by(username: "mike").id,
  friend_id: User.find_by(username: "kendall").id,
  confirmed: false
},
{
  user_id: User.find_by(username: "roman").id,
  friend_id: User.find_by(username: "mike").id,
  confirmed: true
},
{
  user_id: User.find_by(username: "shiv").id,
  friend_id: User.find_by(username: "mike").id,
  confirmed: false
}])