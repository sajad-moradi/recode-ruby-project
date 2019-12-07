puts "What is your first name?"
first_name = gets.chomp
puts "What is your last name?"
last_name = gets.chomp
puts "Hello, #{first_name + " " + last_name}! How old are you?"

age = gets.chomp.to_i
puts "What is your gender?"
gender = gets.chomp.downcase
puts "#{first_name + " " + last_name}, you will be:"
puts "#{age + 10} years in #{10} years time"
puts "#{age + 20} years in #{20} years time"
puts "#{age + 30} years in #{30} years time"
puts "#{age + 40} years in #{40} years time"
full_name = first_name + " " + last_name
puts "Your full name reversed is #{full_name.reverse}"
puts "Your full name has #{full_name.length - 1} characters"
puts "Your full name in uppercase is #{full_name.upcase}"
case gender
when "male"
  if age <= 20
    puts "You're such a young boy!"
  elsif age >= 21 && age <= 40
    puts "How's work, mister?"
  elsif age >= 41
    puts "Wow! I admire your experience, sir!"
  end
when "female"
  if age <= 20
    puts "You're such a young girl!"
  elsif age >= 21 && age <= 40
    puts "How's work, miss?"
  elsif age >= 41
    puts "Wow! I admire your experience, madam!"
  end
else
  puts "Wrong input!"
end
if age.odd?
    puts "Your age is an odd number."
else
    puts "Your age is an even number."
end
birth_year = 2019 - age
if birth_year.modulo(400) == 0 || birth_year.modulo(4) == 0 && birth_year.modulo(100) != 0
    puts "Your birth year is #{birth_year} which is a leap year!" 
else
    puts "Your birth year is #{birth_year} which is a normal year!"
end