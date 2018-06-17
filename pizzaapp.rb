size = [10, 14, 18]
crust = ["Thin", "regular", "thick", "stuffed"]
toppings = ["Double cheese", "4 cheese", "Onions", "Mushrooms", "Green peppers", "Pepperoni", "Sausage", "Ham"]

#Delivery function. No seperate function on carryout, which is less involved.

def delivery(price)
  puts "What is your address?"
  address = gets.chomp.to_s
  puts "That's #{address}, right?"
  sales_tax = 0.06
  delivery_charge = 1.95
  puts "Add a tip, if you wish."
  tip = gets.chomp.to_f
  price = price + (price * sales_tax) + delivery_charge + tip
  price = price.round(2)
  puts "Your total will be \$#{price}, and"
  puts "your order will be to your door in 40 minutes.\n"
end


####starting point

puts "Welcome to Doug's Pizza. How many pizzas today?"
  number_pizzas = gets.chomp.to_i

  i = 0
  total_price = 0.00

while i < number_pizzas #In large loop, we select each individual pizza.
  puts "Pizza No. #{i + 1}:"
  puts "What size would you like, 10, 14 or 18 inches?"
    size = gets.chomp.to_i
    if size == 10
      total_price = total_price + 4.99
    elsif size == 14
      total_price = total_price + 8.99
    elsif size == 18
      total_price = total_price + 12.99
    else exit(0)
    end

    puts "#{crust[0]}, #{crust[1]}, #{crust[2]}, or #{crust[3]} crust?\n"
    crust_pick = gets.chomp.to_s

    top_price = 1.49
    tops_number = 0
    puts "What toppings would you like?:\n"

    topping_array = []

    toppings.each do |topping|
      puts "#{topping}? (y/n)\n"
      y_or_n = gets.chomp.to_s
        if y_or_n == "y"
          topping_array.push(topping)
          tops_number += 1
        end
    end

    puts "Do you have any special requests?"
    special_requests = gets.chomp.to_s

    total_price = total_price + (top_price * tops_number)
    puts "Pizza No. #{i + 1}"
    puts "#{size} inch"
    puts "#{crust_pick} crust"
      topping_array.each do |topping|
        puts "#{topping}\n"
      end
    puts "#{special_requests}\n\n"
    puts "Subtotal: \$#{total_price}"
  i += 1

end #end of large while loop.



puts "delivery or carryout? (type d or c)"
  d_or_c = gets.chomp.to_s
  if d_or_c == "d"
    delivery(total_price)
  elsif d_or_c == "c"
    sales_tax = 0.06
    total_price = total_price + (total_price * sales_tax)
    total_price = total_price.round(2)
    puts "Your total will be \$#{total_price}"
    puts "It will be ready in 15 minutes."
  else
    puts "You may pick up your order in 15 minutes."
  end
