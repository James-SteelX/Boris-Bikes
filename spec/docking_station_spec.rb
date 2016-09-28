require 'docking_station'

describe DockingStation do
it { is_expected.to respond_to :release_bike }

it "produces working bikes" do
  red = subject.release_bike
  expect(red).to be_working
  end

it "docking a bike returns the bike" do
  green_bike = Bike.new
  expect(subject.dock(green_bike)).to eq green_bike
end

it "bike method returns the bike we docked" do
  yellow_bike = Bike.new
  subject.dock(yellow_bike)
  expect(subject.bike).to eq yellow_bike
end

end
