def roll_dice
  rand(1..6)
end

my_roll = [roll_dice, roll_dice]
opponent_roll = [roll_dice, roll_dice]

my_total = my_roll.sum
opponent_total = opponent_roll.sum

if my_total > opponent_total
  puts "I win"
elsif my_total < opponent_total
  puts "I lose"
else
 puts "It's a tie"
end

