# ask user for the first number -- puts ?
# save input of user -- gets.chomp
# ask for the second number
# ask for which operation (+, -, x, /)
# save the type of operation
# execute the operation specified by the user -- conditional flow
# display the result
require_relative "calculator"

operation = nil

until operation == "exit"
  puts "First number please"
  first_num = gets.chomp.to_i

  puts "Second number please"
  second_num = gets.chomp.to_i

  puts "What action would you like to perform? [-|+|/|*] or type exit to stop!"
  operation = gets.chomp

  result = calculator(first_num, second_num, operation)
  puts result
# puts "#{first_num} #{operation} #{second_num} = #{result}"
end

# def calculator(first_num, second_num, operation)
 #  if operation == "-"
 #    result = first_num - second_num

 #  elsif operation == "+"
 #    result = first_num + second_num

 #  elsif operation == "*"
 #    result = first_num * second_num

 #  elsif operation == "/"
 #    result = first_num.to_f / second_num

 #  else
 #    "Error! Try again."
 #  end
 # # end

 # p result
# ruby interface.rb

# > Enter a first number:
# > 6
# > Enter a second one:
# > 8
# > Which operation [+][-][x][/]
# > x
# > Result: 48
