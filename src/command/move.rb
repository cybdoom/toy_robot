module Command

  class Move

    def execute(target, *args)
      coordinates = target.coordinates

      case target.direction
      when :north
        coordinates.last += 1
      when :east
        coordinates.first += 1
      when :south
        coordinates.last -= 1
      when :west
        coordinates.first -= 1
      end
    end

  end

end
