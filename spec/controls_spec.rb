require 'set'
require_relative './../lib/controls'

RSpec.describe Controls do
  controls = Controls.new('player1', 'player2')

  describe '#win?' do
    it 'returns true if players moves has a subset of one of the win sets' do
      expect(controls.win?([1, 2, 3])).to eql(true)
      expect(controls.win?([1, 4, 2, 3])).to eql(true)
      expect(controls.win?([2, 3])).to eql(false)
      expect(controls.win?([2, 3, 7])).to eql(false)
    end
  end
end
