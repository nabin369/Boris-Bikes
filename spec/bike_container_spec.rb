require './lib/bike_container'

class ContainerHolder; include BikeContainer; end

describe BikeContainer do 

	let(:bike) { Bike.new }
	let(:holder) {ContainerHolder.new}

	it "should accept a bike" do
		# we expect the holder to have 0 bikes
		expect(holder.bike_count).to eq(0)
		# let's dock a bike into the holder
		holder.dock(bike)
		# now we expect the holder to have 1 bike
		expect(holder.bike_count).to eq(1)
	end

	it "should not release if it's empty" do
		expect(holder.empty?).to eq(true)
	end

	it "should not accept if its not a bike" do
		expect(holder.dock(holder)).to eq(false)
	end

	it "should return broken bike to the van" do
		broken_bikes, working_bikes = Bike.new, Bike.new
		broken_bikes.break
		holder.dock(broken_bikes)
		expect(holder.broken_bikes).to eq([broken_bikes])
	end
end