def nth_power_of_evens(array, n)
  array.select { |el| el.even? }.map { |num| num ** n }
end

print nth_power_of_evens([-5, -2, 0, 1, 3, 4, 8], 3)
