def convert_to_hash(arr)
  array = []
  for i in 1..arr.length - 1
    tem = {}
    arr[0].each_with_index { |value, index| tem[value] = arr[i][index] }
    array.push(tem)
  end
  return array
end

data_arr = [
  ["Name", "Position", "Age", "Salary"],
  ["Adrian Lim", "Salesperson", "24", "RM2000"],
  ["John Smith", "Clerk", "31", "RM2300"],
  ["Shafie Abdullah", "Manager", "27", "RM3000"],
]
print convert_to_hash(data_arr)
