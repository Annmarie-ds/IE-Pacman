require 'rspec'
require './lib/pacman'
describe Pacman do
  before do
    @grid = Grid.new
    @pacman = Pacman.new
  end
  describe "#initialize" do
    it 'initialized position should be nil' do
      expect(@pacman.x_coord).to be_nil
      expect(@pacman.y_coord).to be_nil
      expect(@pacman.direction).to be_nil
    end
  end
  describe ".placed?" do
    it 'should return false if Pacman initialized correctly' do
      expect(@pacman.placed?).to be false
    end
  end
  describe ".place" do
    context 'when pacman is not yet on the grid' do
    x_coord = 1
    y_coord = 2
    direction = 'NORTH'
      it 'updates position of pacman' do
        expect(@pacman.report).to eq ", , "
        @pacman.place(x_coord, y_coord, direction)
        expect(@pacman.x_coord).to eq 1
        expect(@pacman.y_coord).to eq 2
        expect(@pacman.direction).to eq 'NORTH'
      end
    end
  end
  describe ".move_to" do
    context 'while pacman is on grid' do
    x_coord = 1
    y_coord = 3
    direction = 'NORTH'
      it 'updates position of pacman' do
        @pacman.place(x_coord, y_coord, direction)
        expect(@pacman.x_coord).to eq 1
        expect(@pacman.y_coord).to eq 3
        expect(@pacman.direction).to eq 'NORTH'
      end
    end
  end
  describe ".left" do
    context 'when user inputs left' do
      x_coord = 0
      y_coord = 0
      direction = 'NORTH'
      it 'should turn pacman but he should not move' do
        @pacman.left
        expect(@pacman.x_coord).to eq 0
        expect(@pacman.y_coord).to eq 0
        expect(@pacman.direction).to eq 'WEST'
      end
    end
  end
  describe ".right" do
    context 'when user inputs right' do
    x_coord = 0
    y_coord = 0
    direction = 'NORTH'
      it 'should turn pacman but he should not move' do
        @pacman.right
        expect(@pacman.x_coord).to eq 0
        expect(@pacman.y_coord).to eq 0
        expect(@pacman.direction).to eq 'EAST'
      end
    end
  end
  describe ".report" do
    context 'when user inputs report' do
      x_coord = 0
      y_coord = 1
      direction = 'NORTH'
      it 'should return a string containing the location of pacman' do
        @pacman.place(x_coord, y_coord, direction = direction)
        expect(@pacman.report).to be_a String
        expect(@pacman.x_coord).to eq 0
        expect(@pacman.y_coord).to eq 1
        expect(@pacman.direction).to eq 'NORTH'
      end
    end
  end
  describe ".move" do
    context 'when user inputs move' do
      x_coord = 2
      y_coord = 2
      direction = 'NORTH'
      it 'should return a string containing the location of pacman' do
        @pacman.place(x_coord, y_coord, direction)
        expect(@pacman.move).to eq 3
        expect(@pacman.x_coord).to eq 2
        expect(@pacman.direction).to eq 'NORTH'
      end
    end
  end
end
