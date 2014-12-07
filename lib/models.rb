class Artist < ActiveRecord::Base

  validates :name, :presence => true
  validates_length_of :name, :maximum => 95
  validates_uniqueness_of :name
  
end