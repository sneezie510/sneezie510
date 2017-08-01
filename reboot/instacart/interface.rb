shopping_cart = []
sum = 0
user_pick = nil

store_products = {
  kiwi: 1.25,
  banana: 0.5,
  mango: 4,
  asparagus: 9
}


  puts "Welcome to Instacart! Here are the products."
  store_products.each do |item, price|
  puts "#{item}: #{price}" + "€"
  end

until user_pick == "quit"
  puts "Please make your selection."
  user_pick = gets.chomp

  if store_products.has_key?(user_pick.to_sym)
    shopping_cart << user_pick
    puts "You added #{user_pick}. ('quit' to checkout)"
  elsif
    user_pick == "quit"
    puts "Time to checkout!"
  else
    puts "We don't have that shit, bro! ('quit' to checkout)"
  end
end

shopping_cart.each { |item| sum += store_products[item.to_sym] }

puts "Your total is #{sum}"

# sum = 0
# products.each { |key, value| sum += value.last }
# INSTACART

# Welcome user to the shop
# Make a place to store all the shop's products (hash!)
# Present the user with shopping options

# Let the user shop
# Put the items selected by the user in a collection
# - Shoppingcart (array!)
# Tell user if an article is not available
# - if its not in the hash, tell the user!
# When the user is finished, quit
# - allow user to quit => until loop? conditional loop

# Present the user with the bill!

