# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

50.time do bingbong = User.create(name: "steven", last_name: "strom", email: "blah@gmail.com", password: "password")
Lesson.create(user: "steven", speciality: "rubys", price: 2)
end
