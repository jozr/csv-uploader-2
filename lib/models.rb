require 'csv'

class Upload
end

class Artist < ActiveRecord::Base
  validates :name, :presence => true
  validates_length_of :name, maximum: 95
  validates_uniqueness_of :name
end

class Album < ActiveRecord::Base
  validates :artist_id, :presence => true
  validates :name, :presence => true
  validates :release_year, :presence => true
  validates :rating, :presence => true

  validates_length_of :name, maximum: 250

  validates_numericality_of :release_year
  validates_numericality_of :rating

  validates_inclusion_of :release_year, in: 1900..2020
  validates_inclusion_of :rating, in: 1..5

  validates :name, uniqueness: { :scope => :artist_id }
end