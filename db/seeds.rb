# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


FactoryGirl.create(:user)

FactoryGirl.create(:admin_user)
FactoryGirl.create(:spent)

y = rand(5..11)
y.times { 
	FactoryGirl.create(:spent) 
	}

puts "#{y} records have been created"
