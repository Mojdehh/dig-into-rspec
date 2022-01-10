require_relative 'boat'

describe Boat do
  it 'should create boats' do
    expect(Boat.new).to be_a Boat
  end
  describe '#allowed_abroad?' do
    it 'returns true if inventory inclueds a life jacket' do
      a_boat = Boat.new
      allowed = a_boat.allowed_abroad?(['life jacket', 'sun glassses'])
      expect(allowed).to be true
    end
    it 'returns false if inventory does not inclue life jacket' do
      a_boat = Boat.new
      allowed = a_boat.allowed_abroad?(['swim trunks', 'flippy floppies'])
      expect(allowed).to be false
    end
  end
end