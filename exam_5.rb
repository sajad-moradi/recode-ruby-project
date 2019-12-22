# You will write a method more_than_once that takes in a String
# The method will return an array containing the characters that appeared more than twice in the string.

def more_than_once(string)
  fre = {}
  fre.default = 0
  string.split(//).each { |el| fre[el] += 1 }
  fre.select! { |key, value| value > 2 }
  res = []
  fre.each_key { |key| res.push(key) }
  return res
end

print more_than_once("mississippi") == ["i", "s"]
puts

print more_than_once("bootcamp") == []
puts
