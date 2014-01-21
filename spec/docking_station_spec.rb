require_relative "../lib/docking_station"

describe DockingStation do

it "should accept a bike" do
	bike = Bike.new
	station = DockingStation.new
	#The station is expected to have 0 bikes.
	expect(station.bike_count).to eq(0)
	#Docking a bike in the station
	station.dock(bike)
	#Now we expect it to have one bike
	expect(station.bike_count).to eq(1)
end
	
end

