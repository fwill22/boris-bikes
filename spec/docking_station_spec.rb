require "docking_station"

describe DockingStation do

  it { is_expected.to respond_to :release_bike }

# assuming that station is empty
  describe '#release_bike' do
    it "it should release a bike" do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to be_working
    end
    #raising an error 
  end

  it { is_expected.to respond_to :dock}

  it "checks bike is docked" do
    bike = subject.release_bike
    subject.dock(bike)
    expect(subject.bike).to eq(bike)
  end

end