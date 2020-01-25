# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.

def prime?(num)
  return false if num < 2
  (2...num).each do |factor|
    if num % factor == 0
      return false
    end
  end
  return true
end

def largest_prime_factor(num)
  (num.downto(2)).find { |el| prime?(el) && num % el == 0 }
end

def unique_chars?(word)
  word.length == word.split("").uniq.length
end

def dupe_indices(array)
  frequency = Hash.new { [] }
  array.each.with_index { |el, ind| frequency[el] = frequency[el].push(ind) }
  frequency.each { |key, value| frequency.delete(key) if value.length == 1 }
  return frequency
end

def counter(array)
  frequency = Hash.new(0)
  array.each { |el| frequency[el] += 1 }
  return frequency
end

def ana_array(arr1, arr2)
  counter(arr1) == counter(arr2)
end
