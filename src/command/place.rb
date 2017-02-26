module Command

  class Place < Base

    def execute(target, *args)
      x, y = args[1], args[2]
      raise OutOfField if x > Field::WIDTH || y > Field::HEIGHT

      direction = args[3]
      rotation  = Field::DIRECTIONS.index(direction)

      target.coordinates = [x, y]
      target.rotation    = rotation
      target.placed      = true
    end

  end

end
