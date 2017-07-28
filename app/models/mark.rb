class Mark < ApplicationRecord
	has_many :years
	belongs_to :user
  #attr_accessor :subject1, :subject2, :subject3
  before_save :total
  def total
  self.total_marks = self.subject1.to_i+self.subject2.to_i+self.subject3.to_i
  self.percentage = (self.total_marks)/3
 
end

end
 