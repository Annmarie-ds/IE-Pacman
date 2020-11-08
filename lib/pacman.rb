require_relative 'grid'
class Pacman
  @@directions = ['NORTH', 'EAST', 'SOUTH', 'WEST'].freeze
  attr_reader :x_coord, :y_coord, :direction, :grid
  def initialize
    @grid = Grid.new
    @x_coord = nil
    @y_coord = nil
    @direction = nil
  end
  def placed?
    !x_coord.nil? && !y_coord.nil? && !direction.nil?
  end
  def place(x_coord, y_coord, direction)
    @x_coord = x_coord
    @y_coord = y_coord
    @direction = direction
  end
  def left
    p_index = @@directions.index { |d| d == @direction }
    if @direction == @@directions.first
      new_dir = @@directions.last
    else
      p_index -= 1
      new_dir = @@directions[p_index]
    end
    @direction = new_dir
  end
  def right
    p_index = @@directions.index { |d| d == @direction }
    if @direction == @@directions.last
      new_dir = @@directions.first
    else
      p_index += 1
      new_dir = @@directions[p_index]
    end
    @direction = new_dir
  end
  def report
    return "#{@x_coord}, #{@y_coord}, #{@direction}"
  end
  def move
    if @direction == 'NORTH' && @y_coord <= 3
      @y_coord += 1
    elsif @direction == 'SOUTH' && @y_coord >= 1
      @y_coord -= 1
    elsif @direction == 'EAST' && @x_coord <= 3
      @x_coord += 1
    elsif @direction =='WEST' && @x_coord >= 1
      @x_coord -= 1
    else
      puts "Invalid - Pacman must move on the grid"
    end
  end
end
