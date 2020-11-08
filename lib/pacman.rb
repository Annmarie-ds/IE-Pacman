require_relative 'grid'

class Pacman

  @@directions = ['NORTH', 'EAST', 'SOUTH', 'WEST'].freeze

  attr_reader :x, :y, :f, :grid

  def initialize
    @grid = Grid.new
    @x = nil
    @y = nil
    @f = nil
  end

  def placed?
    !x.nil? && !y.nil? && !f.nil?
  end

  def place(x, y, f)
    @x = x
    @y = y
    @f = f
  end

  def move_to(x, y, f)
    place(x = x, y = y, f = f)
  end

  def left
    index = @@directions.index { |d| d == self.f }

    if @f == @@directions.first
      new_dir = @@directions.last
    else
      index -= 1
      new_dir = @@directions.fetch(index)
    end

    self.move_to(x = @x, y = @y, @f = new_dir)
  end

  def right
    index = @@directions.index { |d| d == self.f }

    if @f == @@directions.last
      new_dir = @@directions.first
    else
      index += 1
      new_dir = @@directions.fetch(index)
    end

    self.move_to(x = @x, y = @y, @f = new_dir)
  end

  def report
    return "#{@x}, #{@y}, #{@f}"
  end

  def move
    if @f == 'NORTH' && @x <= 3
      @y += 1
    elsif @f == 'SOUTH' && @y >= 1
      @y -= 1
    elsif @f == 'EAST' && @y <= 3
      @x += 1
    elsif @f =='WEST' && @x >= 1
      @x -= 1
    else
      puts 'Invalid - Pacman must move on the grid'
    end
  end
end
