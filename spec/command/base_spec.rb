require './src/command/base'

RSpec.describe Command::Base do
  describe 'execute' do
    subject { Command::Base.new }
    let(:robot) { Robot.new }

    it 'raises en error when trying to execute base command' do
      expect{ subject.execute(robot) }.to raise_error(Command::NotImplemented)
    end
  end
end
