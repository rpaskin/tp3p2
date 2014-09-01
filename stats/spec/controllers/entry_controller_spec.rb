require 'spec_helper'

describe Entry do
	before :each do
		@entry = Entry.new(label: "exemplo", sequence: "1,2,3", author: "cavalo foca")
	end

	it "create an entry and verify attributes" do
    	expect(@entry.label).to eq("exemplo")
    	expect(@entry.sequence).to eq("1,2,3")
    	expect(@entry.author).to eq("cavalo foca")



	end 
	
	it 	"destroy an entry and verify if it was destroyed" do
		@entry.destroy
		expect(Entry.find_by(author: "cavalo foca")).to eq(nil)

	end

	it "verify max, min, average, sum and lastName fields" do
		expect(@entry.max).to eq(3)
		expect(@entry.min).to eq(1)
    	expect(@entry.average).to eq(2)
    	expect(@entry.sum).to eq(6)
    	expect(@entry.lastName).to eq("foca")

	end
end