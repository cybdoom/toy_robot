module Command

  class Left

    def execute(target, *args)
      target.rotation = (target.rotation - 1) % Field::DIRECTIONS.count
    end

  end

end
