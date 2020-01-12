def iterative_tower_of_hanoi(disks, source, destination, bridge)
  min_move = 2 ** disks - 1
  for i in 1..min_move
    if i % 3 == 1
      if destination.empty?
        destination.push(source.pop)
      elsif source.empty?
        source.push(destination.pop)
      elsif destination.last > source.last
        destination.push(source.pop)
      elsif source.last > destination.last
        source.push(destination.pop)
      end
    elsif i % 3 == 2
      if bridge.empty?
        bridge.push(source.pop)
      elsif source.empty?
        source.push(bridge.pop)
      elsif bridge.last > source.last
        bridge.push(source.pop)
      elsif source.last > bridge.last
        source.push(bridge.pop)
      end
    elsif i % 3 == 0
      if destination.empty?
        destination.push(bridge.pop)
      elsif bridge.empty?
        bridge.push(destination.pop)
      elsif bridge.last > destination.last
        bridge.push(destination.pop)
      elsif destination.last > bridge.last
        destination.push(bridge.pop)
      end
    end
  end
  return source, destination, bridge
end

def recursive_tower_of_hanoi(disks, source, destination, bridge)
  if disks == 1
    destination.push(source.pop)
  else
    recursive_tower_of_hanoi(disks - 1, source, bridge, destination)
    destination.push(source.pop)
    recursive_tower_of_hanoi(disks - 1, bridge, destination, source)
  end
  return source, destination, bridge
end

a = [7, 6, 5, 4, 3, 2, 1]
b = []
c = []
length = a.length

# p iterative_tower_of_hanoi(length, a, c, b)

p recursive_tower_of_hanoi(length, a, c, b)
