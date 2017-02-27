require './src/field'
require './src/robot'
require './src/command/base'
require './src/command/place'
require './src/command/move'
require './src/command/left'
require './src/command/right'
require './src/command/report'
require './src/parser'

class MissedInputFilePath < RuntimeError; end
class InputFileNotFound < RuntimeError; end

input_file_path = ARGV.first
raise MissedInputFilePath if input_file_path.nil?

absolute_path = File.expand_path(input_file_path)
raise InputFileNotFound unless File.exist?(absolute_path)

robot = Robot.new

File.open(absolute_path, 'r') do |file|
  parser = Parser.new
  file.readlines.each do |line|
    command, *arguments = parser.parse(line)
    if !command.is_a?(Command::Place) && !robot.placed
      $stdout.puts('Incoming command was ignored because robot was not placed yet')
    else
      command.execute(robot, *arguments)
    end
  end
end
