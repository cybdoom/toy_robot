require './src/robot'

RSpec.describe Robot do
  describe 'initialization' do
    it 'should successfully initialize robot instance' do
      expect{ Robot.new }.not_to raise_error
    end
  end
end
