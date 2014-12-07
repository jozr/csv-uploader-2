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

  validates :name, uniqueness: { :scope => :artist_id }
end