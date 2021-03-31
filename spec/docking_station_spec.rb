require "docking_station"

describe DockingStation do
  it { is_expected.to respond_to :release_bike } #release_bike needs to be symbol
end

