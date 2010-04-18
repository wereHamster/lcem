
class Athlete < ActiveRecord::Base

	belongs_to :meeting

	SEX = [:male, :female]

	def sex
		SEX[read_attribute(:sex)]
	end

	def sex=(value)
		write_attribute(:sex, SEX.index(value))
	end

end
