require 'spec_helper'

describe Entry do
	before :each do
		@entry = Entry.new(label: "exemplo", sequence: "1,2,3", author: "cavalo")#, max: 1, min: 2, average: 1.5, sum: 1, lastName: "foca")
	end

	it "create an entry and verify attributes" do
    	expect(@entry.label).to eq("exemplo")
    	expect(@entry.sequence).to eq("1,2,3")
    	expect(@entry.author).to eq("cavalo")
    	#expect(@entry.max).to eq(1)
    	#expect(@entry.min).to eq(2)
    	#expect(@entry.average).to eq(1.5)
    	#expect(@entry.sum).to eq(1)
    	#expect(@entry.lastName).to eq("foca")





	end 
	
	it 	"destroy an entry and verify if it was destroyed" do
		@entry.destroy
		expect(Entry.find_by(author: "cavalo")).to eq(nil)

	end
end