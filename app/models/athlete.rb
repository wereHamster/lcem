
class Athlete < ActiveRecord::Base

	belongs_to :meeting
	
	validates_exclusion_of :name, :in => %w( Nachname )
	validates_exclusion_of :surname, :in => %w( Vorname )
	validates_exclusion_of :street, :in => %w( Strasse )
	validates_exclusion_of :city, :in => ["PLZ / Ort"]
	validates_exclusion_of :age_group, :in => %w( Jahrgang )
	validates_exclusion_of :sex, :in => %w( -1 )
	

	SEX = [:male, :female]

	def sex
		SEX[read_attribute(:sex) || 0]
	end

	def sex=(value)
		write_attribute(:sex, SEX.index(value))
	end

end
