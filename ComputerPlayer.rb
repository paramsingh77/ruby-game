require "./Player.rb"

class ComputerPlayer < Player
  
  # Function name: make_Choice
  # Function Description: It will make computer select a move if the marbles are 
  #                       more then 3 then it will randomly select the number 
  #                       from 1 to 3 otherwise the same value to be returned.
  def make_choice
      @value = @game.get_num_marbles
     
      if @value > 3
        @to_be_removed = 1 + rand(3)
      else
        @to_be_removed = @value
      end
      puts "Computer chose #{@to_be_removed}!"
    return @to_be_removed
  end
end
