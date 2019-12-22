# You will write a method, caesar_cipher that takes a String
# The method will shift the characters by an Integer factor and then output the modified String
# For example, caesar_cipher("a", 5) -> "f"
# (a is the first alphabet (1). Add 5, so the value is now 6. f is the 6th alphabet.)
# Remember that lowercase and uppercase characters have different values

def caesar_cipher(string, shift_factor)
  alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
  return string.split(//).map { |el|
           el.gsub(/\w/, "#{ind = alphabet.index(el).to_i + shift_factor
             until alphabet.index(el).to_i > 25 && ind < 52 || alphabet.index(el).to_i < 26 && ind < 26
             ind -= 26
           end
             alphabet[ind]}")
         }.join
end

print caesar_cipher("What a string!", 5) == "Bmfy f xywnsl!"
puts
