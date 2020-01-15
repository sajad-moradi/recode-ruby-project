# Vending Machine Problem
# As per the README requirements.
# You have to use recursion in this problem
# You can create additional nested methods if you need to

def return_coins(remaining_coins, target_amount, temp_remaining_coins = remaining_coins.sort.reverse, temp_target_amount = target_amount, fst_change = [], index = 0, way = 1, scnd_change = [])
  case way
  when 1
    return [] if remaining_coins.empty? || (remaining_coins.select { |el| el <= target_amount }.sum) < target_amount
    if temp_target_amount % temp_remaining_coins[index] == 0
      fst_change.push(temp_remaining_coins[index])
      temp_target_amount -= temp_remaining_coins[index]
      temp_remaining_coins.delete_at(index)
      index -= 1
    end
    if index == temp_remaining_coins.length - 1 || temp_target_amount == 0
      return_coins(remaining_coins, target_amount, remaining_coins.sort.reverse, target_amount, fst_change, 0, 2, [])
    else
      return_coins(remaining_coins, target_amount, temp_remaining_coins, temp_target_amount, fst_change, index + 1, 1)
    end
  when 2
    if temp_target_amount >= temp_remaining_coins[index]
      scnd_change.push(temp_remaining_coins[index])
      temp_target_amount -= temp_remaining_coins[index]
      temp_remaining_coins.delete_at(index)
      index -= 1
    end
    if index == temp_remaining_coins.length - 1 || temp_target_amount == 0
      if fst_change.sum == target_amount && fst_change.length <= scnd_change.length
        return fst_change
      elsif scnd_change.sum == target_amount
        return scnd_change
      else
        return []
      end
    else
      return_coins(remaining_coins, target_amount, temp_remaining_coins, temp_target_amount, fst_change, index + 1, 2, scnd_change)
    end
  end
end

# Test Case 1
coins = []
100.times do
  coins << 10
  coins << 5
  coins << 2
  coins << 1
end

p return_coins(coins, 15).sort.reverse == [10, 5]

# Test Case 2
coins = []
100.times do
  coins << 10
  coins << 5
  coins << 2
  coins << 1
end

p return_coins(coins, 1).sort.reverse == [1]

# Test Case 3
coins = []
100.times do
  coins << 2
  coins << 1
end
coins << 10
coins << 5

p return_coins(coins, 20).sort.reverse == [10, 5, 2, 2, 1]

# Test Case 4
coins = []

p return_coins(coins, 20).sort.reverse == []

# Test Case 5
coins = []
5.times do
  coins << 10
end

p return_coins(coins, 100).sort.reverse == []

# Test Case 5
coins = []
100.times do
  coins << 2
  coins << 1
end
coins << 10
coins << 5

p return_coins(coins, 3).sort.reverse == [2, 1]

# Test Case 6
coins = []
100.times do
  coins << 1
end

p return_coins(coins, 34).sort.reverse == [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]

# Test Case 7
coins = []
4.times do
  coins << 10
end
2.times do
  coins << 50
end
1.times do
  coins << 20
end
100.times do
  coins << 1
end

p return_coins(coins, 98).sort.reverse == [50, 20, 10, 10, 1, 1, 1, 1, 1, 1, 1, 1]

# Test Case 8
coins = []
8.times do
  coins << 1
end
2.times do
  coins << 20
end
1.times do
  coins << 50
  coins << 15
  coins << 10
end

p return_coins(coins, 98).sort.reverse == [50, 20, 20, 1, 1, 1, 1, 1, 1, 1, 1]

# Test Case 9
coins = []
8.times do
  coins << 1
end
3.times do
  coins << 11
end
2.times do
  coins << 20
end
coins << 50
coins << 10

p return_coins(coins, 33).sort.reverse == [11, 11, 11]
