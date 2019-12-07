puts "Please choose a number between 0 and 100!"
x = gets.chomp.to_i
if x >= 0 && x <= 50
  puts "The number that you chose (#{x}) is between 0 and 50!"
elsif x >= 51 && x <= 100
  puts "The number that you chose (#{x}) is between 51 and 100!"
else
  puts "The number that you chose (#{x}) is above 100!"
end