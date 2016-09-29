require_relative 'bike'

class DockingStation

	attr_reader :capacity
	DEFAULT_CAPACITY = 20

	def initialize(capacity = DEFAULT_CAPACITY)
	 @bikes = []
	 @capacity = capacity
	end

	def release_bike
	 fail 'No bikes available' if empty?
	 fail 'Broken bike' if @bikes.pop.broken? == true
	  @bikes.pop
 	end

	def dock(orange_bike)
		fail 'Docking station full' if full?
		bikes << orange_bike
	end

  private

	attr_reader :bikes

	def full?
    bikes.count >= capacity
	end

	def empty?
		bikes.empty?
	end
end
