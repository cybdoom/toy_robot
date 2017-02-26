class Robot

  attr_accessor :placed
  attr_accessor :coordinates
  attr_accessor :rotation

  def initialize
    @placed = false
  end

  def direction
    return nil if @rotation.nil?

    Field::DIRECTIONS[@rotation]
  end

end
