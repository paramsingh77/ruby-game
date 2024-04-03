require './Game.rb'

class Player
 
  #constructor
  #@game - an instance of the game class 
  #@num_to_remove = how many marbles plaer wants to remove 
  #name = name of player
  def initialize(game,name)

    @game = game
    @num_to_remove = 0
    @name = name
    
  end

  # Function name: make_choice
  # Function Description: It will ask the user to select a number of marbles to 
  #                       be removed from 1-3. And if the wrong input will be  
  #                       there then it will again ask the user to enter number.
  def make_choice

      #reset the number to remove
      @num_to_remove = 0
        while @num_to_remove < 1 or @num_to_remove > 3 or @num_to_remove > @game.get_num_marbles
          print "Enter the number of marbles you want to remove[1-3]: "
          @num_to_remove = gets.to_i
        end
    return @num_to_remove
  end


# Function name: get_num_to_remove (getter)
# Function Description: It will return the number of marbles to be removed.
def get_num_to_remove
  return @num_to_remove
end

# Function name: get_player_name (getter)
# Function Description: It will return the name of player.
def get_player_name
  return @name
end

# Function name: get_num_to_remove (getter)
# Function Description: It will return the name of player and the number of
#                       marbles to be removed.
def display_move
  puts "Player Name: ", @name
  puts "Marble: ", @num_to_remove
end
  
  
end