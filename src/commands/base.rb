module Command

  class Error < RuntimeError; end
  class NotImplemented < Error; end

  class Base

    def execute(target)
      raise NotImplemented
    end

  end

end
