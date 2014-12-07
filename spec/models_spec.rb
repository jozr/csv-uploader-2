require 'spec_helper'

describe Artist do
  it { should validate_presence_of :name }
  it { should ensure_length_of(:name).is_at_most(95) }

  it 'should validate uniqueness of email' do
    artist_one = Artist.create(:name => 'David Bowie')
    artist_two = Artist.new(:name => 'David Bowie')
    expect(artist_two.save).to eq false
  end
end

describe Album do
  it { should validate_presence_of :artist_id }
  it { should validate_presence_of :name }
  it { should validate_presence_of :release_year }
  it { should validate_presence_of :rating }
  it { should ensure_length_of(:name).is_at_most(250) }
  it { should validate_numericality_of(:release_year) }
  it { should validate_numericality_of(:rating) }
  it { should validate_uniqueness_of(:name).scoped_to(:artist_id) }
end