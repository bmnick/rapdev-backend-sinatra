class Game
  attr_accessor :board
  attr_accessor :id
  
  def initialize(id)
    @board = [[' ', ' ', ' '], [' ', ' ', ' '], [' ', ' ', ' ']]
    @id = id
  end
  
  def make_move character, x_pos, y_pos
    @board[y_pos][x_pos] = character
  end
  
  def win?
    if ((@board[0][0] == @board[0][1] && @board[0][1] == @board[0][2] && @board[0][0] != ' ' ) || # horizontal left  
        (@board[1][0] == @board[1][1] && @board[1][1] == @board[1][2] && @board[1][0] != ' ' ) || # horizontal middle 
        (@board[2][0] == @board[2][1] && @board[2][1] == @board[2][2] && @board[2][0] != ' ' ) || # horizontal right  
        (@board[0][0] == @board[1][0] && @board[1][0] == @board[2][0] && @board[0][0] != ' ' ) || # vertical top
        (@board[0][1] == @board[1][1] && @board[1][1] == @board[2][1] && @board[0][1] != ' ' ) || # vertical middle 
        (@board[0][2] == @board[1][2] && @board[1][2] == @board[2][2] && @board[0][2] != ' ' ) || # vertical bottom
        (@board[0][0] == @board[1][1] && @board[1][1] == @board[2][2] && @board[0][0] != ' ' ) || # diagonal 1
        (@board[2][0] == @board[1][1] && @board[1][1] == @board[0][2] && @board[2][0] != ' ' ) # diagonal 2
        )
        true
      else
        false
      end
  end
end
