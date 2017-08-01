require "open-uri"
require "nokogiri"

gift_list = {
  drone: 0,
  perfume: 0,
  sneakers: 0
}

gift_array = gift_list.keys

gift_items = 0
user_pick = nil
user_item = nil

  puts "Welcome to your christmas list!"

until user_pick == "quit"
  puts "Make your selection [list|add|delete|mark|idea|quit]?"
  user_pick = gets.chomp

case user_pick
when "list"
  gift_list.each_with_index do |(item, mark), index|
    puts "#{index + 1} - [#{mark == 1 ? "X" : " "}] #{item}"
  end

when "add"
  puts "What item to add?"
  user_item = gets.chomp
  if gift_list.has_key?(user_item.to_sym)
    puts "Your item is already listed!"
  else
    gift_list[user_item.to_sym] = 0
    puts "Your item has been added!"
  end

when "mark"
  puts "Which item have you bought?"
  user_mark = gets.chomp.to_sym
  if gift_list.has_key?(user_mark)
    gift_list[user_mark] = 1
    puts "Item has been marked!"
  end

when "idea"
  puts "What are you searching on Etsy?"
  article = gets.chomp

  file = open("https://www.etsy.com/search?q=#{article}")
  # 2. We build a Nokogiri document from this file
  doc = Nokogiri::HTML(file)

  # 3. We search every elements with class="card" in our HTML doc
  doc.search(".card").each do |card|
  # 4. for each element found, we extract its title and print it
  title = card.search(".card-title").text.strip
  puts title
end

when "delete"
  puts "What would you like to delete?"
  user_delete = gets.chomp
  gift_list.delete(user_delete.to_sym)
    puts "The item has been deleted."
end
end
