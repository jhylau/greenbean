class Event < ActiveRecord::Base
	has_many :lunch_groups
	has_many :signups
end