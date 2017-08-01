horses = %W[Eclipse Citation Seabiscuit Curlin]

horses.each_with_index { |horse, index|
puts (index + 1).to_s + ". " + horse
}


  rand_pick = horses.sample
  puts "Pick your horse."
  user_pick = gets.chomp.to_i - 1
  winning_index = rand(horses.size)
  puts winning_index
  puts user_pick

if user_pick == winning_index
  puts "You won!"
else
  puts "You lost! The winning horse is #{}"
end
# I want to see a list of horses
# Then the user needs to pick a horse
# Then, we need to tell the user if he won


# Present list of horses (create a list of horses)
# - array of horses
# Get the answer of the user, store the selected horse
# - ask a question, present a list, and save input (gets.chomp)
# Randomly choose a winning horse
#  - look online to get random element of array
# Compare answer of user to the winning horse
# - conditional flow,
# Tell the user the result

# "1. Eclipse"
# "2. Citation"

# user_pick = gets.chomp.to_i
# rand_pick = horses_array.index(random_pick)
