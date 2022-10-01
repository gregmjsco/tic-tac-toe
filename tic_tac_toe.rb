#Tic Tac Toe Ruby Project
require 'pry-byebug'

$LINES = [[1,2,3],[4,5,6],[7,8,9],[1,4,7],[2,5,8],[3,6,9],[1,5,9],[3,5,7]]



class Player

    attr_accessor :name, :marker
    def initialize(name, marker)
        @name = name 
        @marker = marker
        puts "#{self.name} is player using #{self.marker}"
    end

    

    def user_input
        gets.to_i
    end
end

class Game  
    attr_accessor :board
    turn_count = 1

    def initialize
        @board = Array.new(9) {|i| i.to_s }
    end

    def show_board()
            puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
            puts "-----------"
            puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
            puts "-----------"
            puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
    end
end

game = Game.new 
player1 = Player.new('Sam', 'X') 

game.show_board()

#board = [1,2,3,4,5,6,7,8,9]
#puts board 

#def update_board(board)
#  updated_board = []
#  input = gets.to_i
 # marker = "X"
  #board.each do |cell|
  #  if cell == input
   #   cell = marker
    #  updated_board << cell
     # puts "Cell is now marker. Cell is #{cell}"
    #else
     # updated_board << cell
    #end
    
  #end
  #puts updated_board
#end

#update_board(board)
