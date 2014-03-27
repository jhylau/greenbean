# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Event.delete_all
Restaurant.delete_all
Signup.delete_all
LunchGroup.delete_all
first_event = Event.create(:event_date => Date.new(2014,4,11))
quicpic = Restaurant.create(:name =>"Quic Pic")
deguru = Restaurant.create(:name =>"Deguru")
kingston = Restaurant.create(:name =>"Kingston Station")