#link to the Bike class
require_relative "../lib/Bike"

describe Bike do

	it "should not be broken after we create it" do
		bike = Bike.new
		# expect(bike.broken?).to be_false
		# bike.broken?.should be (false)
		expect(bike).not_to be_broken
	end
	
end