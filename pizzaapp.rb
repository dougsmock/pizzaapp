size = ["10-inch", "14-inch", "18-inch"]
crust = ["thin", "regular", "thick"]
sauces = ["no", "tomato", "alfredo"]
cheeses = ["no cheese", "regular cheese", "double cheese", "4 cheese"]
veggies = ["no veggies", "onions", "mushrooms", "green peppers"]
meats = ["no meats", "pepperoni", "sausage", "ham"]





def order(size, crust, sauces, cheeses, veggies, meats)
  crust.sample
  sauces.sample
  cheeses.sample
  veggies.sample
  meats.sample
end

def delivery()
  address = gets.chomp.to_s
  puts "That's #{address}, right?"
  puts "Your order will be to you in 40 minutes.\n"
end




puts "Welcome to Dougie's pizza. How many pizzas today?"
  number_pizzas = gets.chomp.to_i

  i = 0

while i < number_pizzas
  puts "What size would you like, 10, 14 or 18 inches?"
  size = gets.chomp.to_i
  if size == 10
    size = "10-inch"
  elsif size == 14
    size = "14-inch"
  elsif size == 18
    size = "18-inch"
  else
    puts "Sorry, but we can't do that."
    exit(0)
  end

  order(size, crust, sauces, cheeses, veggies, meats)
    puts "Pizza No. #{i + 1} includes #{size} crust,"
    puts "#{crust.sample} crust, #{sauces.sample} sauce,"
    puts "#{cheeses.sample}, #{veggies.sample}, and #{meats.sample}.\n\n"
    i += 1
end

puts "delivery or carryout? (type d or c)"
  d_or_c = gets.chomp.to_s
  if d_or_c == "d"
    puts "What is your address?"
    delivery()
  elsif d_or_c == "c"
    puts "It will be ready in 15 minutes."
  else
    puts "You may pick up your order in 15 minutes."
  end
