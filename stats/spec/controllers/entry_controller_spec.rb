require 'spec_helper'

describe Entry do
	before :each do
		@entry = Entry.create(label: "exemplo", sequence: "1,2,3", author: "cavalo")
	end
	it "create an entry and verify attributes" do
    	#entry.id_entry.should == 1
    	expect (@entry.label).to eq("exemplo")
    	expect (@entry.sequence).to eq("1,2,3")
    	expect (@entry.author).to eq("cavalo")
    	#@entry.label.should == "exemplo"
    	#@entry.sequence.should == "aaaaa"
    	#@entry.author.should == "cavalo"

	end 
	
	it 	"destroy an entry and verify if it was destroyed" do


	end
end