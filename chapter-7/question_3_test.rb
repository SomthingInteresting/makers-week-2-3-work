# Write a game where the player swims down a river infested with
# crocodiles.  The game should:
# * Use the `river` variable that defines the river (see code below).
#   * `-`: clear water.
#   * `C`: crocodile.
#   * The first five characters represent the first part of the river.
#     The second five characters represent the second part of the
#     river.  And so on.
# * Define the player as one character wide.
# * Start the player at the central position of the first part of the
#   river.
#   * e.g. `C-P--`.
# * Each turn:
#   * Check to see if the player is in the same position as a
#     crocodile.  If they are, `puts` `You were eaten.' and stop the
#     program.
#   * `puts` the whole river.  Include a `P` where the player is.
#   * Ask the player if they want to go to left, right or neither.
#     The player enters `left`, `right` or `neither`.
#   * Make the player float down the river by one river part (one line
#     of digits).  Move them to the left, the right, or keep them
#     where they are.
# Print `You survived!` if the player makes it past all parts of the
# river without hitting a crocodile.
#
# * Note: To stop the game when the user is eaten or survives the
#   whole river, don't use `exit` to quit the program because this
#   will break the automated tests.  To exit a while loop early, use
#   the `break` keyword.
#
# * Note: You can assume the player will never move outside the
#   boundary of the river when they choose left and right.  You can
#   also assume the player will always enter either `left`, `right` or
#   `neither`.
#
# * Example output:
#   ```
#   --P--
#   --C--
#   CC-CC
#   CC-CC
#   Type left, right or neither
#   left
#   -----
#   -PC--
#   CC-CC
#   CC-CC
#   Type left, right or neither
#   right
#   -----
#   --C--
#   CCPCC
#   CC-CC
#   Type left, right or neither
#   neither
#   -----
#   --C--
#   CC-CC
#   CCPCC
#   Type left, right or neither
#   neither
#   You survived!
#   ```

river = "-----,--C--,CC-CC,CC-CC"
player_col = 2
player_row = 0

# Define a method to print the game board
def print_board(river, player_col, player_row)
  river_arr = river.split(',')
  river_arr[player_row][player_col] = 'P'
  puts river_arr.join("\n")
end

# Print the initial state of the game
print_board(river, player_col, player_row)

# Start the game loop
loop do
  # Ask the player for input
  puts "Type left, right or neither"
  input = gets.chomp.downcase

  # Update the player position based on input
  case input
  when 'left'
    player_col = [player_col - 1, 0].max
  when 'right'
    player_col = [player_col + 1, river.split(',').last.size - 1].min
  end

  # Move the player down the river
  player_row += 1

  # Check if the player was eaten by a crocodile
  if river.split(',')[player_row][player_col] == 'C'
    puts "You were eaten."
    break
  end

  # Print the current state of the game
  print_board(river, player_col, player_row)

  # Check if the player made it to the end of the river
  if player_row == river.split(',').size - 1
    puts "You survived!"
    break
  end
end
