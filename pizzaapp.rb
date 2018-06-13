#function random pizzas
#see a string of pizza elements in console
#a new type of pizzas
#NAME METHOD for each components meats, crust, size, veggies,
#specialty toppings, #one for sauce
#each calls master function, RANDOMLY pulls from every array ...
#DON'T USE classes.




#string of categories
#size 10, 14, 18
#veggies none, onions mushrooms, green peppers
#meats none, pepperoni, sausage, ham
#sauces none, tomato alfredo
#crust thin regular thick
#cheese none, regular, double 4_cheese

size = ["10 inch", "14 inch", "18 inch"]
crust = ["thin", "regular", "thick"]
sauces = ["no sauce", "tomato", "alfredo"]
cheeses = ["no cheese", "regular cheese", "double cheese", "4 cheese"]
veggies = ["no veggies", "onions", "mushrooms", "green peppers"]
meats = ["no meats", "pepperoni", "sausage", "ham"]

def order(size, crust, sauces, cheeses, veggies, meats)
  size.sample
  crust.sample
  sauces.sample
  cheeses.sample
  veggies.sample
  meats.sample
end

puts "Welcome to Dougie's pizza. How many pizzas today?"
  number_pizzas = gets.chomp.to_i
  i = 0
while i < number_pizzas
  order(size, crust, sauces, cheeses, veggies, meats)
    puts "Pizza No. #{i + 1} includes a #{size.sample} crust,"
    puts "#{crust.sample} crust, #{sauces.sample} sauce,"
    puts "#{cheeses.sample}, #{veggies.sample}, and #{meats.sample}."
    i += 1
end
