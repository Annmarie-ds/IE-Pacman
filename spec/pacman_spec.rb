require 'rspec'
require './lib/pacman'

describe Pacman do
  before do
    @grid = Grid.new
    @pacman = Pacman.new
  end

  describe "#initialize" do
    it 'Pacman should be initialized nil' do
      expect(@pacman.x).to be_nil
      expect(@pacman.y).to be_nil
      expect(@pacman.f).to be_nil
    end
  end

  describe ".placed?" do
    it 'should return false if Pacman initialized correctly' do
      expect(@pacman.placed?).to be false
    end
  end

  describe ".place" do
    context 'while pacman is at 0, 0, NORTH' do
    x = 1
    y = 2
    f = 'NORTH'
      it 'updates position of pacman' do
        @pacman.place(x = x, y = y, f = f)
        expect(@pacman.x).to eq 1
        expect(@pacman.y).to eq 2
        expect(@pacman.f).to eq 'NORTH'
      end
    end
  end

  describe ".move_to" do
    context 'while pacman is on grid' do
    x = 1
    y = 3
    f = 'NORTH'
      it 'updates position of pacman' do
        @pacman.place(x = x, y = y, f = f)
        expect(@pacman.x).to eq 1
        expect(@pacman.y).to eq 3
        expect(@pacman.f).to eq 'NORTH'
      end
    end
  end

  describe ".left" do
    context 'when user inputs left' do
      x = 0
      y = 0
      f = 'NORTH'
      it 'should turn pacman but he should not move' do
        @pacman.left
        expect(@pacman.x).to eq 0
        expect(@pacman.y).to eq 0
        expect(@pacman.f).to eq 'WEST'
      end
    end
  end

  describe ".right" do
    context 'when user inputs right' do
    x = 0
    y = 0
    f = 'NORTH'
      it 'should turn pacman but he should not move' do
        @pacman.right
        expect(@pacman.x).to eq 0
        expect(@pacman.y).to eq 0
        expect(@pacman.f).to eq 'EAST'
      end
    end
  end

  describe ".report" do
    context 'when user inputs report' do
      x = 0
      y = 1
      f = 'NORTH'
      it 'should return a string containing the location of pacman' do
        @pacman.place(x = x, y = y, f = f)
        expect(@pacman.report).to be_a String
        expect(@pacman.x).to eq 0
        expect(@pacman.y).to eq 1
        expect(@pacman.f).to eq 'NORTH'
      end
    end
  end

  describe ".move" do
    context 'when user inputs move' do
      x = 2
      y = 2
      f = 'NORTH'
      it 'should return a string containing the location of pacman' do
        @pacman.place(x = x, y = y, f = f)
        expect(@pacman.move).to eq 3
        expect(@pacman.x).to eq 2
        expect(@pacman.f).to eq 'NORTH'
      end
    end
  end
end
