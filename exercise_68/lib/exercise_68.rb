def partition(array, num)
  smaller_array, bigger_array = [], []
  array.each { |el| el >= num ? bigger_array << el : smaller_array << el }
  [smaller_array, bigger_array]
end

def merge(hash1, hash2)
  res = Hash.new(0)
  hash1.each { |key, value| res[key] = value }
  hash2.each { |key, value| res[key] = value }
  res
end

def censor(sentence, curse_words)
  sentence.split.map! { |el| curse_words.include?(el.downcase) ? el.gsub(/[aeiou]/i, "*") : el }.join(" ")
end

def power_of_two?(num)
  Math.log(num, 2) % 1 == 0
end

def palindrome?(string)
  temp, string_reverse, i = string.split(//), [], 0
  string.length.times do
    string_reverse.unshift(temp[i])
    i += 1
  end
  string == string_reverse.join
end

def substrings(string, res = [])
  if string.length == 1
    res << string
    return res
  end
  string, i = string.split(//), 0
  res << string[0]
  (string.length - 1).times do
    i += 1
    res << "#{res.last}#{string[i]}"
  end
  string.shift
  substrings(string.join, res)
end

def palindrome_substrings(string)
  substrings(string).select { |el| el.length > 1 }.select { |el| palindrome?(el) }
end
