require_relative "../lib/docking_station"

describe DockingStation do

let(:bike) { Bike.new }
let(:station) { DockingStation.new(:capacity => 20) }

it "should accept a bike" do
	#The station is expected to have 0 bikes.
	expect(station.bike_count).to eq(0)
	#Docking a bike in the station
	station.dock(bike)
	#Now we expect it to have one bike
	expect(station.bike_count).to eq(1)
end
	
	it "should release a bike" do
		station.dock(bike)
		station.release(bike)
		expect(station.bike_count).to eq(0)
	end

	it "should know when it's full" do
		expect(station).not_to be_full
		20.times { station.dock(Bike.new) }
		expect(station).to be_full
	end


end

