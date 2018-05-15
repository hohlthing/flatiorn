module Players
  class Computer < Player

    attr_accessor :board

    def move(board)

      @board = board
      corners = [1,3,7,9]
      last_moves = [2,4,6,8]

      if !board.taken?(5)
        '5'
      elsif winning_move != nil
        winning_move
      elsif !board.taken?(1)
        '1'
      elsif !board.taken?(3)
        '3'
      elsif !board.taken?(7)
        '7'
      elsif !board.taken?(9)
        '9'
      elsif !board.taken?(2)
        '2'
      elsif !board.taken?(4)
        '4'
      elsif !board.taken?(6)
        '6'
      else !board.taken?(8)
        '8'
      end

    end


    def winning_move

      Game::WIN_COMBINATIONS.detect do |combo|
        if combo.count { |i| @board.cells[i] = token } == 2 && combo.count { |i| @board.cells[i] == ' ' } == 1
          combo.select { |i| @board.cells[i] == ' ' }[0].to_s
        end
      end
    end



  end
end
