puts "Please enter the number."
input_number = gets.chomp
if input_number != input_number.to_i.to_s
  print "Wrong input!"
else
  input_number = input_number.to_i
  for number in 1..input_number * 3 + 1
    print "*"
  end
  puts ""
  for i in 1..input_number
    print "*"
    for number in 1..input_number
      if i * number > 9
        print "#{i * number}*"
      else
        print " #{i * number}*"
      end
    end
    puts ""
    for number in 1..input_number * 3 + 1
      print "*"
    end
    puts ""
  end
end