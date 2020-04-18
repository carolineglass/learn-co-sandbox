def greeting 
  puts "Hello World!"
end 

def say_greeting_five_times 
greeting
greeting
greeting
greeting
greeting
end 

def greeting_a_person(name)
  puts "Hello #{name}"
end

name = "Maria"
greeting_a_person(name)

def greeting_a_programmer(name, language = "computer")
  puts "Hello #{name}. We heard you are a great #{language} programmer."
end

greeting_a_programmer("Caroline")
