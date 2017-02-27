class Parser

  class Error < RuntimeError; end
  class UnknownCommand < Error; end
  class InvalidInstructionFormat < Error; end
  class CommandIsNotImplemented < Error; end

  KNOWN_COMMANDS = [
    :place,
    :move,
    :left,
    :right,
    :report
  ]

  def parse(line) # returns command
    raise InvalidInstructionFormat if line.nil? || line.empty?

    chunks = line.split(' ')
    raise UnknownCommand unless KNOWN_COMMANDS.include?(chunks.first.downcase.to_sym)

    begin
      command_name = chunks.first.capitalize
      arguments = chunks[1..-1]
      return eval_command_class(command_name).new, *arguments
    rescue NameError
      raise CommandIsNotImplemented
    end
  end

  protected

  def eval_command_class(command_name)
    eval("Command::#{command_name.capitalize}")
  end

end
