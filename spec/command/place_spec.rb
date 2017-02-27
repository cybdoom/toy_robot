require './src/field'
require './src/command/base'
require './src/command/place'

RSpec.describe Command::Place do
  describe 'execute' do
    subject { Command::Place.new }
    let(:robot) { Robot.new }

    it 'succesfully executes PLACE comand with valid incoming arguments' do
      expect{ subject.execute(robot, 1, 1, :north) }.not_to raise_error
      expect(robot.coordinates).not_to be_nil
      expect(robot.coordinates[:x]).to be_eql(1)
      expect(robot.coordinates[:y]).to be_eql(1)
    end

    it 'raise exception when trying to place out of the field' do
      expect{ subject.execute(robot, Field::WIDTH + 1, Field::HEIGHT + 1, :south) }.to raise_error(Command::OutOfField)
    end
  end
end
