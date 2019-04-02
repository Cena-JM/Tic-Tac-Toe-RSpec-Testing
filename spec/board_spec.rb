require 'set'
require_relative './../lib/board'

RSpec.describe Board do
  board = Board.new

  describe '#board_update' do
    it "Position value is turned to 'X' for player1 and 'O' for player2 " do
      board.board_update(1, 'X')
      expect(board.board[0]).to eql('X')

      board.board_update(2, 'O')
      expect(board.board[1]).to eql('O')
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
