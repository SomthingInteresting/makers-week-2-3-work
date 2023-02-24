puts "What's your name?" #asks the user for their name
user = gets.chomp #gets their name and goes to a new line
user.chr == "S"? (puts "YOU SUCK ".upcase + user.upcase) : (puts "Hi, #{user}") #looks for the "S" character then boolean which gives a response based on if it's true or false. #{user} instead of + user for readability. 