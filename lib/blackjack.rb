def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  card_val = 1 + rand(11)
  return card_val
end

def display_card_total(total)
  # code #display_card_total here
  puts "Your cards add up to #{total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  answer = gets.chomp
  return answer
end

def end_game(total)
  # code #end_game here
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  total = deal_card() + deal_card()
  display_card_total(total)
  return total
end

def hit?(initial_round)
  # code hit? here
  prompt_user()
  answer = get_user_input()
  case answer
  when "s"
    return initial_round
  when "h"
    initial_round = initial_round + deal_card()
    return initial_round
  else
    return initial_round

  end

end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome()
  cardValues = initial_round()
  while cardValues <= 21
  cardValues = hit?(cardValues)
  display_card_total(cardValues)
  end
end_game(cardValues)
end
