require_relative './../lib/user_interface.rb'

RSpec.describe UserInterface do
  ui = UserInterface.new
  board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  describe '#display' do
    it 'prints a sample board' do
      expect { ui.display(board) }.to output(
        "\n+-----------+ \n| 1 | 2 | 3 | \n+-----------+ \n"\
        "| 4 | 5 | 6 | \n+-----------+ \n| 7 | 8 | 9 | \n+-----------+ \n\n"
      ).to_stdout
    end
  end
end
