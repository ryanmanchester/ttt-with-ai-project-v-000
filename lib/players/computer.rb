require 'pry'

module Players
  class Computer < Player


    def move(board)
      binding.pry

  def corner(board)
    corners = [1, 5, 7, 9]
    corners.detect {|cell| board.valid_move?(cell)}
  end

  def random(board)
    valid_moves = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
    valid_moves.each {|move| board.valid_move?(move)}.sample
  end

  def other_moves(board)
    corner(board) || random(board)
  end


  end
end
