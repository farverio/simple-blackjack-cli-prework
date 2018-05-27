def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  total = deal_card + deal_card
  # total += deal_card
  display_card_total(total)
  return total
end

def hit?(total)
  response = ""
  until response == 'h' || response == 's'
    prompt_user
    response = get_user_input
  end
    
  if response == 'h'
    return total += deal_card
  elsif response == 's'
    return total
  end
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round
  
  until total > 21
<<<<<<< HEAD
    total = hit?(total)
    display_card_total(total)
=======
    c = hit?(total)
>>>>>>> dafcb87ae790eb5e7423de27882da6aa13701f39
  end
  
end_game(total)
end
    
