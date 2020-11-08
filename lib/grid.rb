class Grid
  attr_reader :width, :length, :x_coord, :y_coord

  def initialize(width = 4, length = 4)
    @width = width
    @length = length
  end

  def valid_position?(x_coord, y_coord)
    x_coord.between?(0, 4) && y_coord.between?(0, 4)
  end
end
