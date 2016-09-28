require_relative 'bike'

class DockingStation

	attr_reader :bikes

	DEFAULT_CAPACITY = 20

	def initialize
   @bikes = []
	end

	def release_bike
	 fail 'No bikes available' if empty?
	 bikes.pop
	end

	def dock(orange_bike)
		fail 'Docking station full' if full?
		bikes << orange_bike
	end

private
	def full?
		bikes.count >= DEFAULT_CAPACITY
	end

	def empty?
		bikes.empty?
	end
end
