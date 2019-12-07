puts "What is the time now? (In military time)"
military_time = gets.chomp
hour = military_time[0..1].to_i
minute = military_time[-2..-1].to_i
zero = ""
zero_m = ""
if military_time.length != 4 || hour > 23 || minute > 60
  puts "Wrong input!"
else
  if hour < 12
    period = "AM"
    if hour < 10
      zero = "0"
    end
    if minute < 10
      zero_m = "0"
    end
    puts "#{military_time} in military time is #{zero}#{hour}:#{zero_m}#{minute}#{period}"
  else
    period = "PM"
    if hour == 12
      if minute < 10
        zero_m = "0"
      end
      puts "#{military_time} in military time is 12:#{zero_m}#{minute}#{period}"
    else
      hour = hour.modulo(12)
      if hour < 10
        zero = "0"
      end
      if minute < 10
        zero_m = "0"
      end
      puts "#{military_time} in military time is #{zero}#{hour}:#{zero_m}#{minute}#{period}"
    end
  end
end
