require 'rspec'
require './lib/grid'

describe Grid do
  before do
    @grid = Grid.new
  end

  describe "#initialize" do
    it 'should have a width of 4' do
      expect(@grid.width).to be_a Integer
      expect(@grid.width).to eq 4
    end

    it 'should have a length of 4' do
      expect(@grid.length).to be_a Integer
      expect(@grid.length).to eq 4
    end
  end

  describe ".valid_position?"
  it "should check that position is within grid area" do
    expect(@grid.valid_position?(0, 0)).to be true
    expect(@grid.valid_position?(-2, 0, )).to be false
    expect(@grid.valid_position?(0, -2)).to be false
    expect(@grid.valid_position?(6, 0)).to be false
    expect(@grid.valid_position?(0, 6)).to be false
  end
end
