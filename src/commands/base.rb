module Command

  class Error < RuntimeError; end
  class NotImplemented < Error; end
  class OutOfField < Error; end

  class Base

    def execute(target, *args)
      raise NotImplemented
    end

  end

end
