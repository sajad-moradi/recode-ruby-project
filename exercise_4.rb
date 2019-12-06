puts "What is your first name?"
first_name = gets.chomp
puts "What is your last name?"
last_name = gets.chomp
puts "Hello, #{first_name+" "+last_name}! How old are you?"
age = gets.chomp.to_i
puts "#{first_name+" "+last_name}, you will be:"
puts "#{age + 10} years in #{10} years time"
puts "#{age + 20} years in #{20} years time"
puts "#{age + 30} years in #{30} years time"
puts "#{age + 40} years in #{40} years time"
full_name = first_name + " " + last_name
puts "Your full name reversed is #{full_name.reverse}"
puts "Your full name has #{full_name.length-1} characters"
puts "Your full name in uppercase is #{full_name.upcase}"