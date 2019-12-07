i = 0
loop do
    i += 1
    if i.modulo(15) == 0
        puts "FizzBuzz"
    elsif i.modulo(5) == 0
        puts "Buzz"
    elsif i.modulo(3) == 0
        puts "Fizz"
    else
    puts i
    end
    if i == 100
        break
    end
end