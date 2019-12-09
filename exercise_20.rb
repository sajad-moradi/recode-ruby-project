def shuffler(array)
  len = array.length
  x = []
  for i in (0..len - 1)
    ran = rand(len - i)
    x.push(array[ran])
    array.delete_at(ran)
  end
  return x
end

print shuffler([1, 2, 3, 4, 5])
