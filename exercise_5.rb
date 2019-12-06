puts "Welcome to the Ruby Calculator!"
puts "Can I have the first number?"
_1st_num = gets.chomp.to_i
puts "Can I have the second number?"
_2nd_num = gets.chomp.to_i
puts "Cool! The two numbers added up is #{_1st_num.+(_2nd_num)}"
puts "#{_1st_num} - #{_2nd_num} will result in #{_1st_num.-(_2nd_num)}"
puts "Multiplying #{_1st_num} and #{_2nd_num} will be #{_1st_num.*(_2nd_num)}"
puts "Finally, #{_1st_num} divided by #{_2nd_num} is #{_1st_num./(_2nd_num)} with a balance of #{_1st_num.modulo(_2nd_num)}"
