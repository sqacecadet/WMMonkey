# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

100.times do |spent|
	svalue = '3.14159'
	sdescription = "I need to spent #{svalue} on #{Date.today} to build rockets";

	Spent.create!(value: svalue, date: Date.today, description: sdescription)
end

puts "100 records have been created"