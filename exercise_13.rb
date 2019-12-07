puts "Please enter the number."
input_number = gets.chomp
if input_number != input_number.to_i.to_s
  print "Wrong input!"
else
  input_number = input_number.to_i
  id = 0
  loop do
    id += 1
    number = 0
    until number == id - 1
      number = number + 1
      print "*"
    end
    puts "*"
    break if id == input_number
  end
end
