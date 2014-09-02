class Statisc < ActiveRecord::Base
#DEZ MULEKKKKKKK
  after_initialize do
    unless self.sequence.blank?
      self.max = self.sequence.split.collect{|i| i.to_i}.max
      self.min = self.sequence.split.collect{|i| i.to_i}.min
      self.sum = self.sequence.split.collect{|i| i.to_i}.sum
      self.avg = self.sum/self.sequence.split.size
    end

    unless author.blank?
      self.lastName = author.split.last
    end
  end
end
