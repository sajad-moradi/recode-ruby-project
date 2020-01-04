# Write a method, linear_search(array, target), that accepts an array and another input as target
# The method should use the iterative linear search algorithm to return the position of the element where the target is found
# If no target is found, -1 should be returned
# You may not use any Array or Enum methods except length or size
# You may not use any Enum derived iterations. You may use only for, while or until loops
# The recursive solution is not accepted for this exercise

# Write Your method code here
def linear_search(array, target)
  for i in 0..(array.length - 1)
    if array[i] == target
      return i
    end
  end
  return -1
end

# Driver Code: Do not edit under this line

# check_solution runs a single test case and prints whether it was
# successful or not.
def check_solution(test_number, array, target, expected)
  actual = linear_search(array, target)
  if actual != expected
    puts "Test ##{test_number}: Incorrect value: got #{actual}, expected #{expected}"
    return false
  end

  puts "Test ##{test_number}: Correct"
  return true
end

# run_tests runs each of the test cases.
def run_tests
  check_solution(1, [6, 29, 18, 2, 72, 19, 18, 10, 37], 18, 2)
  check_solution(2, [6, 29, 18, 2, 72, 19, 18, 10, 37], 9, -1)
end

# Execute the tests.
run_tests
