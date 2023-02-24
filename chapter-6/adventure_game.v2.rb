#version 2 but with improvements and to make it a bit more complex

puts "You're in a spooky forest"

move_number = 1

while true do
  if move_number == 1
    puts "You are facing forward and can move forward, left or right. What do you do?"
  else
    puts "You are facing forward and can move forward or left. What do you do?"
  end

  user = gets.chomp.downcase

  if move_number == 1 && user == "forward"
    move_number += 1
  elsif move_number == 2 && user == "left"
    puts "You win!"
    break
  else
    if move_number == 1
      puts "You were killed by a werewolf!"
    else
      puts "You were killed by a goblin!"
    end
    break
  end
end


