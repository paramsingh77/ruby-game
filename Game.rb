require "./Player.rb"
require "./ComputerPlayer.rb"

class Game
  
  #constructor
  def initialize(player_1_class ,name1 , player_2_class,name2)
      #start with 14-30 marbles on the board
      @marbles = 14 + rand(16)
      @current_player_id = 0
      @players = [player_1_class.new(self,name1),player_2_class.new(self,name2)]
  end

  # Function name: get_num_marbles
  # Function Description: Returns the number of marbles on board.

  def get_num_marbles
      return @marbles
  end

  # Function name: game_over
  # Function Description: It will return true if no marble is present on board
  #                       and false if present.
 
  def game_over
     if @marbles == 0
        return true
     else 
       return false
     end
  end

  # Function name: show_board
  # Function Description: It will print the total number of o's present on board.
  
  def show_board
      puts 'o' *@marbles
  end

  # Function name: switch_player
  # Function Description: If player's id will be 0 then it will be update to 1 and
  #                       vice-versa
  
  def switch_player
    if @current_player_id == 0
      @current_player_id = 1
    elsif @current_player_id == 1
      @current_player_id = 0
    end
  end

  # Function name: remove_marbles
  # Function Description: It will take the marbles to be be removed as a parameter
  #                       and will subtract from the current marbles and return it.
 def remove_marbles(option)
  @marbles = @marbles - option
  return @marbles
end

  # Function name: current_player
  # Function Description: It will check the current id of player.If id will be 0 
  #                       then it will print human player name and otherwise
  #                       computer player.
  def current_player
      return  @players[@current_player_id]
  end

  # Function name: play
  # Function Description: play method will run the game till the time marbles are 
  #                       not zero. First it will print board then it will ask  
  #                       human player to make a move and will check for the 
  #                       number of balls on table and if no ball is left then 
  #                       make human player as a winner. And same procedure for  
  #                       computer move.
  def play 
  while @marbles != 0
    show_board
    option = @players[@current_player_id].make_choice
    @marbles = remove_marbles(option)
    check = game_over
    if(check == true)
      print "#{@players[@current_player_id].get_player_name} Wins the Game"
      break
    end
    switch_player 
  end
end

end 
