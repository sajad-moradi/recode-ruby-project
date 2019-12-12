def roman_numeral(a)
  roman = [["I", "V", "X"], ["X", "L", "C"], ["C", "D", "M"], ["M"]]
  a = a.to_s.split("")
  if a.length > 4
    puts "Wrong input"
  else
    b = []
    for i in 0..a.size - 1
      r = roman[i]
      num = a[-(i + 1)].to_i
      if i == a.size - 1
        c = []
        num.times do
          c.push(roman[3])
        end
        c.join
      else
        case num
        when 1..3
          c = []
          num.times do
            c.push(r[0])
          end
          c.join
        when 4
          c = []
          c.push(r[0], r[1])
          c.join
        when 5
          c = []
          c.push(r[1])
        when 6..8
          c = []
          c.push(r[1])
          num = num - 5
          num.times do
            c.push(r[0])
          end
          c.join
        when 9
          c = []
          c.push(r[0], r[2])
          c.join
        end
      end
      b.push(c)
    end
    return b.reverse.join
  end
end

p roman_numeral(2678)
