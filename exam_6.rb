# You will write a method only_unique_elements that takes in an Array
# The method returns a new array where all duplicate elements are removed.
# You must solve this using a hash.

def only_unique_elements(arr)
  fre = {}
  arr.each { |el| fre[el] = 0 }
  res = []
  fre.each_key { |key| res.push(key) }
  return res
end

print only_unique_elements(["a", "b", "a", "a", "b", "c"]) == ["a", "b", "c"]
puts

print only_unique_elements(["cow", "goat", "sheep", "cow", "cow", "sheep"]) == ["cow", "goat", "sheep"]
puts
