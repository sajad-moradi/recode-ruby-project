# You will write a method, binary search(array, target), that accepts an array and another input as target
# The method should use the iterative binary search algorithm to return the position of the element where the target is found
# If no target is found, -1 should be returned
# The recursive solution is not accepted for this exercise

# Write Your method code here
def binary_search(array, target)
  temp = array.sort
  middle = temp.length / 2
  first = 0
  last = temp.length - 1
  while first < last
    if temp[middle] == target
      return middle
    elsif temp[middle] < target
      first = middle + 1
      middle = (first + last) / 2
    else
      last = middle - 1
      middle = (first + last) / 2
    end
  end
  return -1
end

# Driver Code: Do not edit under this line

# check_solution runs a single test case and prints whether it was
# successful or not.
def check_solution(test_number, array, target, expected)
  actual = binary_search(array, target)
  if actual != expected
    puts "Test ##{test_number}: Incorrect value: got #{actual}, expected #{expected}"
    return false
  end

  puts "Test ##{test_number}: Correct"
  return true
end

# run_tests runs each of the test cases.
def run_tests
  check_solution(1, (100..200).to_a, 135, 35)
  check_solution(2, [13, 19, 24, 29, 32, 37, 43], 35, -1)
end

# Execute the tests.
run_tests
