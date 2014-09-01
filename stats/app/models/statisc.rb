class Statisc < ActiveRecord::Base

  after_initialize do
    self.max = self.sequence.split.collect{|i| i.to_i}.max
    self.min = self.sequence.split.collect{|i| i.to_i}.min
    self.sum = self.sequence.split.collect{|i| i.to_i}.sum
    self.avg = self.sum/self.sequence.split.size
    self.lastName = author.split.last
    puts self.inspect
  end

end
