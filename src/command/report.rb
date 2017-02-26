module Command

  class Report

    def execute(target, *args)
      x, y = target.coordinates.first, target.coordinates.last
      $stdout.puts "Now robot's coordinates are (#{x}, #{y}). He looks to the #{target.direction}."
    end

  end

end
