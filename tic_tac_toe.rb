#Tic Tac Toe Ruby Project


class Game 
    #Game Loop Class 
    def initialize
        @board = Board.new 

        start_game 
    end 

    def start_game
        puts @board
    end

end

class Player
    def initialize
    end
end

class Board 

    BOARD_HEIGHT = 3
    BOARD_WIDTH = 3



    def initialize
        @board = Array.new(BOARD_HEIGHT, Array.new(BOARD_WIDTH))
        p @board
    end
end

Game.new 