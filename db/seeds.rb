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
first_event = Event.create(:event_date => Date.new(2014,4,4))
quicpic = Restaurant.create(:name =>"Quic Pic")
deguru = Restaurant.create(:name =>"Deguru")
kingston = Restaurant.create(:name =>"Kingston Station")

Signup.create(:email => 1, :event_id => first_event.id)
Signup.create(:email => 2, :event_id => first_event.id)
Signup.create(:email => 3, :event_id => first_event.id)
Signup.create(:email => 4, :event_id => first_event.id)
Signup.create(:email => 5, :event_id => first_event.id)
Signup.create(:email => 6, :event_id => first_event.id)
Signup.create(:email => 7, :event_id => first_event.id)
Signup.create(:email => 8, :event_id => first_event.id)
Signup.create(:email => 9, :event_id => first_event.id)