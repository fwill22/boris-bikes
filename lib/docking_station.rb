require_relative 'bike'

class DockingStation 
  attr_reader :bike

  # assume there are no bikes
  # when call release_bike --> Error
  # release_bike needs to change

  def release_bike
    @bike
  end

  def dock(bike)
    @bike = bike
  end

end