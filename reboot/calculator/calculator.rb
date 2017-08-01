# def calculator(first_num, second_num, operation)
#   operation = nil

#   until operation ==

#   if operation == "-"
#     result = first_num - second_num

#   elsif operation == "+"
#     result = first_num + second_num

#   elsif operation == "*"
#     result = first_num * second_num

#   elsif operation == "/"
#     result = first_num.to_f / second_num

#   else
#     "Error! Try again."
#   end
#   return result
# end

def calculator(first_num, second_num, operation)

  case operation
  when "+"
    result = first_num + second_num
  when "/"
    result = first_num / second_num
  when "*"
    result = first_num * second_num
  when "-"
    result = first_num - second_num
  else
    result = "Goodbye!"
  end
end


