#Tic Tac Toe Ruby Project
require 'pry-byebug'

$LINES = [[1,2,3],[4,5,6],[7,8,9],[1,4,7],[2,5,8],[3,6,9],[1,5,9],[3,5,7]]



class Player

    attr_reader :game, :name, :marker
    def initialize(game, name, marker)
        @game = game 
        @name = name 
        @marker = marker
       # puts "#{self.name} is player using #{self.marker}"
    end

    def player_selection
        selection = gets.to_i
    end
end



class Game      
    attr_accessor :board
    attr_reader :current_player_id
    turn_count = 1
    

    def initialize
        @board = Array.new(9) {|i| i.to_s }
        @players = [Player.new(self, "Sam", "X"), Player.new(self, "Misato", "O")]
        @current_player_id = 0
    end

    def show_board()
            puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
            puts "-----------"
            puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
            puts "-----------"
            puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
    end

    def free_positions
        (1..9).select {|position| @board[position].nil?}
      end

    def place_marker(player)
        position = player.player_selection
        puts "#{player.name} selects #{player.marker} position #{position}"
        @board[position] = player.marker
    end

    def current_player
        @players[current_player_id]
      end

      def other_player_id
        1 - @current_player_id
      end
      
      def switch_players!
        @current_player_id = other_player_id
      end

    def play
            place_marker(current_player)
            show_board()  
    end

end

game = Game.new 



game.show_board()
game.play

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
