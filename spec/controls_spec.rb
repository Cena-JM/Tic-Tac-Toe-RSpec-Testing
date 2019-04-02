require 'set'
require_relative './../lib/controls'

RSpec.describe Controls do
  controls = Controls.new('player1', 'player2')

  describe '#win?' do
    it 'Positions are started at 1' do
      expect(controls.win?([1, 2, 3])).to eql(true)
      expect(controls.win?([1, 4, 2, 3])).to eql(true)
      expect(controls.win?([2, 3])).to eql(false)
      expect(controls.win?([2, 3, 7])).to eql(false)
    end
  end
end
