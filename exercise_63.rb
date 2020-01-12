# Palindrome: Recursion
# Write a method, is_palindrome?, that accepts a number
# The method should use recursion to check if a number provided is a palindrome
# The method should return true or false
# You can create additional nested methods

def is_palindrome?(n)
  n.kind_of?(Array) ? temp = n : temp = n.to_s.split(//)
  return true if temp.length == 1 || temp.length == 0
  return false if temp.pop != temp.shift
  is_palindrome?(temp)
end

puts is_palindrome?(88) == true
puts is_palindrome?(12321) == true
puts is_palindrome?(7992) == false
puts is_palindrome?(7227) == true
