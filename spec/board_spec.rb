require 'set'
require_relative './../lib/board'

RSpec.describe Board do
  board = Board.new
  position1 = board.board[0]
  i = 1

  describe '#board_update' do
    it 'Positions are started at 1' do
      expect(position1).to eql(1)
    end
    it "Position value is turned to 'X' " do
      board.board_update(1, 'X')
      position1 = board.board[0]
      expect(position1).to eql('X')
    end
    it 'Value of given position is updated by player symbol' do
      board.board_update(2, 'O')
      expect(board.board[i]).to eql('O')
    end
  end

  describe '#available_positions' do
    it 'check if the selected spot is available' do
      expect(board.available_positions(1)).to eql(false)
      expect(board.available_positions(2)).to eql(false)
      expect(board.available_positions(3)).to eql(true)
    end
  end
end
