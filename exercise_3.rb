puts "What is your number?"
num = gets.chomp.to_i
puts "The number in the thousandth place is: #{(num % 10000) / 1000}"
puts "The number in the hundredth place is: #{(num % 1000) / 100}"
puts "The number in the tens place is: #{(num % 100) / 10}"
puts "The number in the ones place is: #{num % 10}"
