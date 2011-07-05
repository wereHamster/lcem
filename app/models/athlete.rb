# encoding: UTF-8

class Athlete < ActiveRecord::Base

  belongs_to :meeting

  validates_presence_of :vorname, :nachname, :strasse, :gemeinde
  validates_numericality_of :jahrgang, :geschlecht

  #	validates_format_of :vorname, :nachname, :strasse, :with => /^[A-Z]/,
  #	  :message => "ist ein Nomen und die werden in der deutschen Sprache immer noch gross geschrieben. Auch im Internet."

  validates_format_of :gemeinde, :with => /^\d{4}\s+(\/\s+)?\w+/,
  :message => "ist in einem mir unbekannten Format."

  before_save :capitalize_fields

  SEX = [:Knabe, :Mädchen]

  def geschlecht
    read_attribute(:geschlecht) and SEX[read_attribute(:geschlecht)]
  end

  def geschlecht=(value)
    write_attribute(:geschlecht, SEX.index(value.intern))
  end

  private

  def capitalize_fields
    [:vorname, :nachname, :strasse, :gemeinde].each { |field|
      self[field] = self[field].gsub(/\b\w/) { $&.upcase }
    }
  end

end
