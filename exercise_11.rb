puts "Please enter a valid number."
user_number = gets.chomp
if user_number != user_number.to_i.to_s
    print "Wrong input!"
else
    user_number = user_number.to_i
    puts user_number
    if user_number > 0
        loop do
            user_number -= 1
            puts user_number
            sleep(0.3)
            break if user_number == 0
        end 
    elsif user_number < 0
        loop do
            user_number += 1
            puts user_number
            sleep (0.3)
            break if user_number == 0
        end
    end
end