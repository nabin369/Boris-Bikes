# load BikeContainer
require_relative 'bike_container'

class DockingStation

	# this gives us all the methods that used to be in this class
	include BikeContainer

	def initialize(option = {})
		# self.capacity is calling the capacity=() method
		# (note the equals sign) defined in BikeContainer
		# capacity (the seond argument to fetch()) is calling
		# the capacity() method in BikeContainer
		self.capacity = option.fetch(:capacity, capacity)
	end

	# def empty?
	# 	self.bikes.empty?
	# end

	# end
end