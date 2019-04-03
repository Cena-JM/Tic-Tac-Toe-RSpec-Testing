require 'set'
require_relative './../lib/controls'

RSpec.describe Controls do
  controls = Controls.new('player1', 'player2')

  describe '#win?' do
    it 'returns true if player moves has a subset of one of the win sets '\
        'and false if there is non' do
      expect(controls.win?([1, 2, 3])).to eql(true)
      expect(controls.win?([1, 4, 2, 3])).to eql(true)
      expect(controls.win?([6, 5, 4])).to eql(true)
      expect(controls.win?([1, 7, 8, 9])).to eql(true)
      expect(controls.win?([4, 7, 1])).to eql(true)
      expect(controls.win?([1, 5, 3, 9])).to eql(true)
      expect(controls.win?([2, 5, 8])).to eql(true)
      expect(controls.win?([4, 3, 7, 5])).to eql(true)
      expect(controls.win?([3, 6, 9])).to eql(true)
      expect(controls.win?([2, 3])).to eql(false)
      expect(controls.win?([2, 3, 7])).to eql(false)
      expect(controls.win?([2, 3, 7, 6])).to eql(false)
      expect(controls.win?([])).to eql(false)
    end
  end
end
