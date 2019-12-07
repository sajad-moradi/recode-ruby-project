puts "Hi! Welcome to Number Guessing game.  May I know your name please?"
name = gets.chomp
puts "Ok #{name}, lets start the game!"
sleep(2)
secret_number = rand(1..1000)
times = 0
puts "Guess the secret number?"
guess =
  until guess == secret_number
    guess = gets.chomp.to_i
    times += 1
    if guess > secret_number
      puts "Colder"
    elsif guess < secret_number
      puts "Hotter"
    end
  end
puts "Congratulations #{name}, you guessed it in #{times} gusses. The secret number is #{secret_number}!"
