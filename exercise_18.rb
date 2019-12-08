def better_reverse(array)
  a = array.length
  for number in 1..a
    a = a - 1
    array.push(array[a])
    array.delete_at(a)
  end
  return array
end

p better_reverse([1, 2, 3, 4, 5])
