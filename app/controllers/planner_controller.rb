class PlannerController < ApplicationController
	def index
	end

	def roll
		GroupAssignment.new(Event.last)
		redirect_to "/"
	end
end