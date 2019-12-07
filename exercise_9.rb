puts "Welcome to the Ruby Calculator!"
puts "Can I have the first number?"
_1st_num = gets.chomp.to_i
puts "Can I have the second number?"
_2nd_num = gets.chomp.to_i
puts "What kind of math operations you want me to do?"
opration = gets.chomp
case opration
when "+"
    num = _1st_num.+(_2nd_num)
    puts "The two numbers added up is #{num}"
when "-"
    num = _1st_num.-(_2nd_num)
    puts "#{_1st_num} - #{_2nd_num} will result in #{num}"
when "*"
    num = _1st_num.*(_2nd_num)
    puts "Multiplying #{_1st_num} and #{_2nd_num} will be #{num}"
when "/"
    num = _1st_num.modulo(_2nd_num)
    puts "#{_1st_num} divided by #{_2nd_num} is #{_1st_num./(_2nd_num)} with a balance of #{num}"
else
    num = 0
    puts "Wrong input!"
end
case num.to_s.length
when 1
    puts "The number in the ones place is: #{num % 10}"
when 2
    puts "The number in the tens place is: #{(num % 100) / 10}"
    puts "The number in the ones place is: #{num % 10}"
when 3
    puts "The number in the hundredth place is: #{(num % 1000) / 100}"
    puts "The number in the tens place is: #{(num % 100) / 10}"
    puts "The number in the ones place is: #{num % 10}"
else
    puts "The number in the thousandth place is: #{(num % 10000) / 1000}"
    puts "The number in the hundredth place is: #{(num % 1000) / 100}"
    puts "The number in the tens place is: #{(num % 100) / 10}"
    puts "The number in the ones place is: #{num % 10}"
end