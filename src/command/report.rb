module Command

  class Report

    def execute(target, *args)
      x, y = target.coordinates[:x], target.coordinates[:y]
      $stdout.puts "Now robot's coordinates are (#{x}, #{y}). He looks to the #{target.direction}."
    end

  end

end
