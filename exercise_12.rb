puts "Please enter the number."
input_number = gets.chomp
if input_number != input_number.to_i.to_s
    print "Wrong input!"
else
input_number = input_number.to_i
puts "What symbol you want me to use?"
input_symbol = gets.chomp
if input_symbol == ""
    input_symbol = "="
end
i = 0
loop do 
i += 1
if i == 1 || i == input_number
    j = 0
    loop do 
        j += 1
        print input_symbol
        break if j == input_number - 1
        end
else
    print input_symbol
    k = 0 
    loop do 
        k += 1
        print " "
        break if k == input_number - 2
        end  
end
puts input_symbol
break if i == input_number
end
end 
