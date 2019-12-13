def squares_of_evens(array)
  array.select { |el| el.even? }.map { |num| num * num }
end

print squares_of_evens([-5, -2, 0, 1, 3, 4, 8])
