def unique_char(sen)
  sen = sen.downcase.split(//).sort.reverse
  fre = {}
  fre.default = 0
  sen.each { |el| el = "(space)" if el == " "; fre[el] += 1 }
  puts "The unique characters are:"
  fre.each { |key, value| puts "#{key} - #{value}" }
end

unique_char("Write a program that takes in a sentence from the user")
