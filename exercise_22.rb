puts "What is your first word?"
fst = gets.chomp
puts "What is your second word?"
snd = gets.chomp
if fst.downcase.split(//).sort == snd.downcase.split(//).sort
  puts "#{fst} and #{snd} are anagrams!"
else
  puts "#{fst} and #{snd} are not anagrams!"
end
