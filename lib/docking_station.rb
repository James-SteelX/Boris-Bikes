<<<<<<< HEAD
require_relative 'bike'

class DockingStation

  attr_reader :bike

  def release_bike
    Bike.new
  end

  def dock(bike)
    @bike = bike
  end
  
=======
class DockingStation
  def release_bike

  end
>>>>>>> 1cd0daf6e9052589c5f32fc446921fb9fde1e810
end
