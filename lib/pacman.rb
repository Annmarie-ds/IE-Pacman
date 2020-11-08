require_relative 'grid'

class Pacman

  @@directions = ['NORTH', 'EAST', 'SOUTH', 'WEST'].freeze

  attr_reader :x_coord, :y_coord, :f, :grid

  def initialize
    @grid = Grid.new
    @x_coord = nil
    @y_coord = nil
    @f = nil
  end

  def placed?
    !x_coord.nil? && !y_coord.nil? && !f.nil?
  end

  def place(x_coord, y_coord, f)
    @x_coord = x_coord
    @y_coord = y_coord
    @f = f
  end

  # def move_to(x_coord, y_coord, f)
  #   place(x = x_coord, y_coord = y_coord, f = f)
  # end

  def left
    p_index = @@directions.index { |d| d == @f }

    if @f == @@directions.first
      new_dir = @@directions.last
    else
      p_index -= 1
      new_dir = @@directions[p_index]
    end
    @f = new_dir
  end

  def right
    p_index = @@directions.index { |d| d == @f }

    if @f == @@directions.last
      new_dir = @@directions.first
    else
      p_index += 1
      new_dir = @@directions[p_index]
    end
    @f = new_dir
  end

  def report
    return "#{@x_coord}, #{@y_coord}, #{@f}"
  end

  def move
    if @f == 'NORTH' && @x_coord <= 3
      @y_coord += 1
    elsif @f == 'SOUTH' && @y_coord >= 1
      @y_coord -= 1
    elsif @f == 'EAST' && @y_coord <= 3
      @x_coord += 1
    elsif @f =='WEST' && @x_coord >= 1
      @x_coord -= 1
    else
      puts "Invalid - Pacman must move on the grid"
    end
  end
end
