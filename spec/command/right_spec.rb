require './src/command/base'
require './src/command/place'
require './src/command/right'
require './src/robot'

RSpec.describe Command::Right do
  describe 'execute' do
    subject { Command::Right.new }
    let(:place_command) { Command::Place.new }
    let(:robot) { Robot.new }

    it 'turns robot from the north to the east' do
      place_command.execute(robot, 1, 1, :north)
      subject.execute(robot)
      expect(robot.direction).to be_eql(:east)
    end

    it 'turns robot from the east to the south' do
      place_command.execute(robot, 1, 1, :east)
      subject.execute(robot)
      expect(robot.direction).to be_eql(:south)
    end

    it 'turns robot from the south to the west' do
      place_command.execute(robot, 1, 1, :south)
      subject.execute(robot)
      expect(robot.direction).to be_eql(:west)
    end

    it 'turns robot from the west to the north' do
      place_command.execute(robot, 1, 1, :west)
      subject.execute(robot)
      expect(robot.direction).to be_eql(:north)
    end
  end
end
