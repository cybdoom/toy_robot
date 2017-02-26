module Command

  class Right

    def execute(target, *args)
      target.rotation = (target.rotation + 1) % Field::DIRECTIONS.count
    end

  end

end
