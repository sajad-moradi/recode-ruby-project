def average(num1, num2)
  (num1 + num2) / 2.0
end

def average_array(array)
  array.sum / array.length.to_f
end

def repeat(string, repeat_time)
  return "" if string.empty?
  temp = []
  repeat_time.times { temp << string }
  temp.join
end

def yell(string)
  "#{string.upcase}!"
end

def alternating_case(string)
  temp = string.split
  temp.map! { |el| temp.index(el).even? ? el.upcase : el.downcase }.join(" ")
end

def hipsterfy(string)
  return string if string.scan(/[a, e, i, o, u]/).empty?
  temp = string.split(//).reverse
  temp.delete_at(temp.find_index { |el| el.match(/[a, e, i, o, u]/) })
  temp.reverse.join
end

def vowel_counts(string)
  frequency = Hash.new(0)
  string.split(//).each { |el| frequency[el.downcase] += 1 if el.match?(/[a, e, i, o, u]/i) }
  frequency
end

def caesar_cipher(string, shift_factor)
  lower_alphabets, upper_alphabets, result = ("a".."z").to_a, ("A".."Z").to_a, ""
  string.each_char do |char|
    if lower_alphabets.include?(char)
      old_index = lower_alphabets.index(char)
      new_index = old_index + shift_factor
      result = result + lower_alphabets[new_index % 26]
    elsif upper_alphabets.include?(char)
      old_index = upper_alphabets.index(char)
      new_index = old_index + shift_factor
      result = result + upper_alphabets[new_index % 26]
    else
      result = result + char
    end
  end
  result
end
