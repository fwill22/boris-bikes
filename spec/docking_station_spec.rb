require "docking_station"

describe DockingStation do

  it { is_expected.to respond_to :release_bike }

  it "gets a bike and expects the bike to be working" do
    expect(subject.release_bike).to be_working
  end

  it { is_expected.to respond_to :dock}

  it "checks bike is docked" do
    bike = subject.release_bike
    subject.dock(bike)
    expect(subject.bike).to eq(bike)
  end
  
end