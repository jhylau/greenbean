class GroupAssignment

 	def initialize(event)
 		@event = event
 		@lunch_groups = create_lunch_groups
 		random_assign_to_group
 	end

 	def create_lunch_groups
 		@event.lunch_groups.delete_all
 		number_of_people = @event.signups.count
 		@number_of_lunch_groups = number_of_people / 4
 		lunch_groups = []
 		restaurants = Restaurant.all.sample(@number_of_lunch_groups)
 		@number_of_lunch_groups.times do |i|
 			lunch_groups << LunchGroup.create!(:event_id => @event.id, :restaurant_id => restaurants[i].id)
 		end
 		return lunch_groups
 	end

 	def random_assign_to_group
 		signups = []
 		Signup.where(:event_id => @event.id).each do |s|
 			signups << s
 		end
 		signups.shuffle.each_with_index do |s, index|
 			id = index % @number_of_lunch_groups
 			s.lunch_group_id = @lunch_groups[id].id
 			s.save!
 		end
 	end

end
