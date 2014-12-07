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