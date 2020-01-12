# Prime Numbers: Recursion
# Write a method, is_prime?
# You have to determine what are the arguments required for is_prime
# The method should be used to determine if a number is a prime number recursively.

def is_prime?(n, i = n / 2)
  return true if n == 2 || n == 3
  return false if n < 2
  if n % i == 0
    return false
  elsif i == 2
    return true
  else
    is_prime?(n, i - 1)
  end
end

puts is_prime?(17) == true
puts is_prime?(15) == false
puts is_prime?(41) == true
