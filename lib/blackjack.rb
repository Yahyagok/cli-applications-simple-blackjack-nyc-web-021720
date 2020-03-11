require 'pry'

def welcome
    puts "Welcome to the Blackjack Table"
  # code #welcome here
end

def deal_card
  # code #deal_card here
  card = rand(1..11)

end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"  
  # code #display_card_total here

end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"

  # code #prompt_user here
end

def get_user_input
  # code #get_user_input here
  user_input = gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
  # code #end_game here
end

def initial_round
  first_round = deal_card + deal_card 
  display_card_total(first_round)
  return first_round 
  # code #initial_round here
end

def hit?(card_total)
  valid_inputs = ["h", "s"]

  prompt_user # Type 'h' to hit or 's' to stay 
  input = get_user_input 
  until valid_inputs.include?(input)
    invalid_command # please enter a valid command 
    prompt_user # Type 'h' to hit or 's' to stay 
    input = get_user_input  
  end 

  if input == "h"
    card_total += deal_card # deal_card = card = rand(1..4)
  end 
  card_total 
  # code hit? here
end

def invalid_command
  puts "Please enter a valid command"

  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome # "Welcome to the Blackjack Table"
  card_total = initial_round # returns  first round ,first_round = deal_card + deal_card 
  until card_total > 21  
  card_total = hit?(card_total)
  display_card_total(card_total)
  end 
  end_game(card_total)
end
    
