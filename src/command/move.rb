module Command

  class Move

    def execute(target, *args)
      coordinates = target.coordinates

      case target.direction
      when :north
        if coordinates[:y] < Field::HEIGHT - 1
          coordinates[:y] += 1
        else
          print_warning
        end
      when :east
        if coordinates[:x] < Field::WIDTH - 1
          coordinates[:x] += 1
        else
          print_warning
        end
      when :south
        if coordinates[:y] > 0
          coordinates[:y] -= 1
        else
          print_warning
        end
      when :west
        if coordinates[:x] > 0
          coordinates[:x] -= 1
        else
          print_warning
        end
      end
    end

    private

    def print_warning
      $stdout.puts 'Kamikadze mode is required to execute fatal commands :)'
    end

  end

end
