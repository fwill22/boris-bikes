require_relative 'bike'

class DockingStation 
  
  def initialize
    @bikes = []
  end

  attr_reader :bike

  # assume there are no bikes
  # when call release_bike --> Error
  # release_bike needs to change
  def release_bike
    fail 'Sorry mate, don\'t be a dock' unless @bike
    @bike
  end


  def dock(bike)
    #want to count number of elements in @bikes array
    #and throw the error when there are more than 20
    fail "Docking Station full" if @bike 
    @bike = bike
  end

end