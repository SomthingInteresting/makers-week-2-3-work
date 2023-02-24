puts "You're in a spooky forest" #intro line that I don't want repeated

move_number = 1 #this is the accumulator

while true do
  puts "You are facing forward and can move forward, left or right. What do you do?" #part of the intro but it's within the loop

  user = gets.chomp.downcase #added downcase as users can use caps

  if user == "right"
    puts "You were killed by a goblin!"
    break
  elsif user == "left"
    puts "You were killed by a werewolf!"
    break
  elsif user == "forward"
    if move_number == 2 #once they reach 2 wins they win and then it's allowed to break the loop
      puts "You win!"
      break
    end
  
    move_number += 1  #changed from move_number + 1 as Ruby allows it to be squished together for ease. 
    #the accumulator increases once it does a round.
  #removed "else" as it's not needed if empty
  end
end
