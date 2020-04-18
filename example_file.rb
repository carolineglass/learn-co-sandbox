# p "Hello World"

=begin
run_code_inside = false
puts "Code before if...end"
if run_code_inside 
  puts "code inside"
end 
puts "Code after if...end"


#if...elsif...else...end EXAMPLE

chance_of_rain = 0.6
puts "Let's go outside!"
if chance_of_rain <= 0.25
  puts "Pack a sun shelter!"
elsif (chance_of_rain > 0.25 && chance_of_rain < 0.75)
  puts "Pack an umbrella!"
else 
  puts "Stay home and read Hegel"
end 


#if...end EXAMPLE 

puts "You know what year it is??"
this_year = Time.now.year
if this_year == 2020
puts "Hey, it's 2020!"
end


#case...when...end EXAMPLE 

current_weather = "sunny"
case current_weather
when "raining"
  puts "it is #{current_weather} outside. bring an umbrella"
when "sunny"
  puts "it is #{current_weather} outside. enjoy the sunny weather"
when "snowing"
  puts "it is #{current_weather} wear snow boots!"
end 

#while...do...end EXAMPLE 

count = 0
while count < 10 do 
  puts "I am the #{count}, I love to count!"
  count += 1
end


#while...do...end BREAK example 

magic_exit_number = 7
count = 0
while count < 10 do 
  break if count == magic_exit_number
  puts "I am the #{count}, I love to count."
  count +=1 
end 


#Integer.times to execute a loop n-times

n = 2 
count = 0
3.times do 
  puts "I ran."
end


#use LOOP to creat an infinite loop and BREAK

count = 0
n = 3
loop do
  break if count >= n
  puts "I ran."
  count += 1
end


#use UNTIL to repeat until condition is true
counter = 0
until counter == 20 
  puts "the current number is #{counter} and less than 20"
  counter += 1
end 


#defining METHODS
def say_hello_world
  puts "Hello World!"
end
=end

def a_method(a, b)
  puts "hi"
  sum = a + b
  puts sum
end

a_method(1,2)

def stylish_chef
  best_hairstyle = "Guy Fieri"
  return "Martha Stewart"
  "Guy Fieri"
end

stylish_chef

def my_ruby_method
  local_variable = 'Hello World!'
  puts local_variable
end 

my_ruby_method

#Looping through an array 

pets_array = ["dog", "cat", "fish", "bird", "hamster"]

def output_array_elements(array)
  counter = 0
  while array[counter] do 
    #the array[counter] will return nil when it goes past the elements of the array and therefore stop looping 
    puts array[counter]
    counter += 1
  end
end

output_array_elements(pets_array)

output_array_elements(["hello", "how are you", "goodbye"])

def output_array_elements2(array)
  counter = 0 
  while counter < array.length do 
    puts array[counter]
    counter += 1
  end
end

output_array_elements2(pets_array)

#CREATES A SIMPLE COUNTER 0-4 
5.times do |index|
  puts index 
end 

#CREATING A LOOP THROUGH AN ARRAY (no matter how long the array)
array = [1, 2, 3, 4, 5]
length = array.length

length.times do |index|
  puts array[index] 
end 

famous_cats = ["lil' bub", "grumpy cat", "maru"]
puts famous_cats.sort! 

#.to_a = makes it into an array
puts (1..10).to_a

#ENUMERABLES 

lunch_menu = ["pizza", "sandwhich", "sushi", "soup", "salad"]
 
p lunch_menu.map {|food| "#{food}!"}

nums = [1, 2, 3, 4]

p nums.collect {|num| num * num}

odds_and_evens = [1, 3, 2, 18, 5, 10, 24]


p odds_and_evens.select do |num| 
 num % 2 == 0
end 

bands = {joy_division: %w[ian bernard peter stephen], 
  the_smiths: %w[johnny andy morrissey mike],
  the_cramps: %w[lux ivy nick],
  blondie: %w[debbie chris clem jimmy nigel],
  talking_heads: %w[david tina chris jerry]
}

firstmost_name = 
 bands.reduce(nil) do |memo, (key, value)|
  memo = value[0] if !memo
  sorted_names = value.sort
  memo = sorted_names[0] if sorted_names[0] <= memo
  memo
end

p firstmost_name



