puts "What's your name?"
user = gets.chomp
user.chr == "S"? (puts "YOU SUCK ".upcase + user.upcase) : (puts "Hi, #{user}")