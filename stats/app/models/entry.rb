class Entry < ActiveRecord::Base
	after_initialize do 
		split_sequence = self.sequence.split(",")
		self.max = split_sequence.map(&:to_i).max
		self.min = split_sequence.map(&:to_i).min
		self.sum = split_sequence.map(&:to_i).inject{ |sum, el| sum + el }
		self.average = self.sum.to_f / split_sequence.size

		split_author = self.author.split
		self.lastName = split_author.last
		
	end
end
