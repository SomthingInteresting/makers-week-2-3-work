def roll_dice
  rand(1..6)
end

puts "Rolling the dice..."
result = roll_dice()
puts "The result is: #{result}"