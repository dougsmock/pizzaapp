# declaring some variables

size = [10, 14, 18]
crust = ["thin", "regular", "thick"]
toppings = ["double cheese", "4 cheese", "onions", "mushrooms", "green peppers", "pepperoni", "sausage", "ham"]

#Delivery function. No seperate function on carryout, which is easier.

def delivery(price)
  puts "What is your address?"
  address = gets.chomp.to_s
  puts "That's #{address}, right?"
  sales_tax = 0.06
  delivery_charge = 1.95
  puts "Add a tip, if you wish."
  tip = gets.chomp.to_f
  price = price + (price * sales_tax) + delivery_charge + tip
  puts "Your total will be \$#{price}, and"
  puts "your order will be to your door in 40 minutes.\n"
end


####starting point

puts "Welcome to Doug's Pizza. How many pizzas today?"
  number_pizzas = gets.chomp.to_i

  i = 0
  total_price = 0.00

while i < number_pizzas #We select each individual pizza.
  puts "Pizza No. #{i + 1}:"
  puts "What size would you like, 10, 14 or 18 inches?"
  size = gets.chomp.to_i
    if size == 10
      total_price = total_price + 4.99
    elsif size == 14
      total_price = total_price + 8.99
    elsif size == 18
      total_price = total_price + 12.99
    end

    puts "#{crust[0]}, #{crust[1]}, or #{crust[2]} crust?\n"
    crust_pick = gets.chomp.to_s

    top_price = 1.49
    tops_number = 0
    puts "What toppings would you like?:\n"

    toppings.each do |topping|
      #tops_selected = [] trying to push items into an array.
      puts "#{topping}? (y/n)\n"
      y_or_n = gets.chomp.to_s
        if y_or_n == "y"
    #      tops_selected.push(topping)
          tops_number += 1
      end

    end

    total_price = total_price + (top_price * tops_number)
    puts "Pizza No. #{i + 1}"
    puts "#{size} inch"
    puts "#{crust_pick} crust"
  #  puts tops_selected.each #How do I output arrays?
    puts "Subtotal: \$#{total_price}"
  i += 1

end #end of big while loop, what stays in.



puts "delivery or carryout? (type d or c)"
  d_or_c = gets.chomp.to_s
  if d_or_c == "d"
    delivery(total_price)
  elsif d_or_c == "c"
    sales_tax = 0.06
    total_price = total_price + (total_price * sales_tax)
    puts "Your total will be \$#{total_price}"
    puts "It will be ready in 15 minutes."
  else
    puts "You may pick up your order in 15 minutes."
  end


  #Another question: How do you round to two decimal points?
