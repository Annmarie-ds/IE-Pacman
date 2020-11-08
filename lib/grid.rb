class Grid
  attr_reader :width, :length, :x, :y

  def initialize(width = 4, length = 4)
    @width = width
    @length = length
  end

  def valid_position?(x, y)
    x.between?(0, 4) && y.between?(0, 4)
  end
end
