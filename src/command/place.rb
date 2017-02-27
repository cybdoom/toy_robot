module Command

  class Place < Base

    def execute(target, *args)
      x, y = args[0].to_i, args[1].to_i
      raise OutOfField if x > Field::WIDTH || y > Field::HEIGHT

      direction = args[2].downcase.to_sym
      rotation  = Field::DIRECTIONS.index(direction)

      target.coordinates = {x: x, y: y}
      target.rotation    = rotation
      target.placed      = true
    end

  end

end
