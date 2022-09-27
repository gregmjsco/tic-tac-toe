#Tic Tac Toe Ruby Project
require 'pry-byebug'

$LINES = [[1,2,3],[4,5,6],[7,8,9],[1,4,7],[2,5,8],[3,6,9],[1,5,9],[3,5,7]]



class Player

    attr_accessor :player
    def initialize
        puts "Player created"
    end
end

class Board 
    attr_accessor :board

    def initialize
        @board = Array.new(9) {|i| i.to_s }
    end

    def show_board
            puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
            puts "-----------"
            puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
            puts "-----------"
            puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
    end
end

board = Board.new 
player1 = Player.new 

board.show_board