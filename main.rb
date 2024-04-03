# Name : Parminder Singh
# Professor: Ms. Morgan Burcham
# Program Description: This code solves the problem of marble game. In this game
#                      human and computer both play game and select the number of 
#                      balls to be removed. The one who picks the last ball wins game.
require "./Game.rb"
require "./ComputerPlayer.rb"
require "./Player.rb"

Game.new(Player,"Param",ComputerPlayer, "Computer").play