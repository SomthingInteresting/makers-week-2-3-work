def handle_input(input, current_room)
  case input
  when 'quit'
    puts 'Bye!'
    return true
  when 'look'
    describe_room(current_room)
  when 'north'
    if current_room == 'hall'
      puts 'You move north to the study.'
      return 'study'
    else
      puts 'You move south to the hall.'
      return 'hall'
    end
  when 'look at desk'
    if current_room == 'study'
      puts 'You see a piece of paper that reads, The combination is 2451.'
    else
      invalid_input
    end
  when 'enter combination 2451'
    if current_room == 'study'
      puts 'You see some diamonds in the safe, pick them up and make your escape'
      return true
    else
      invalid_input
    end
  else
    invalid_input
  end
end

def describe_room(current_room)
  if current_room == 'hall'
    puts 'You are standing in a hall with a marble floor. You see a door.'
  elsif current_room == 'study'
    puts 'You are in a warm and cosy study. You see a safe. You see a desk.'
  end
end

def invalid_input
  puts 'Invalid command. Valid commands are: quit, look, north, south, look at desk, enter combination 2451.'
end

current_room = 'hall'

loop do
  describe_room(current_room)
  puts 'What do you do?'
  input = gets.chomp.downcase
  result = handle_input(input, current_room)
  if result == true
    break
  elsif result
    current_room = result
  end
end

