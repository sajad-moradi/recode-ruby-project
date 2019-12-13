def roman_numeral(number)
num = number.to_s.reverse
return num
end

puts roman_numeral(2678)