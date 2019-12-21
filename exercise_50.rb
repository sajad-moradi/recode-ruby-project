# Based on your code for Exercise 10, create a Day Organiser

# First, ask for a time as a single input string in military time (e.g. “16:30”) or standard time (e.g. 04:30PM)
# Then, ask for the activity that will be happening during that time as a string
# Ask the user if that is the last activity they would like to input (Y/N)
# If it’s the last activity, then, list out in order of the day, the activity of the day, together with the time in standard time.
# e.g. Your output should be:
# Your activities today are:
# 04:30AM - Wake up, eat breakfast
# 05:30AM - Go to the gym
# 08:00AM - Head for Recode Class
last_activity = ""
until last_activity == "Y" || last_activity == "y"
  puts "Please enter the time (format: 16:30 or 04:30PM)!"
  time = gets.chomp
  hour = time[0..1].to_i
  minute = time[3..4].to_i
  if time.match(/\d\d:\d\d(PM|AM)/i)
    if hour > 12 || minute > 60
      puts "Wrong input!"
      return
    else
      final_time = time
    end
  elsif time.match(/\d\d:\d\d/)
    military_time = time
    zero = ""
    zero_m = ""
    if hour > 23 || minute > 60
      puts "Wrong input!"
      return
    else
      if hour < 12
        period = "AM"
        if hour < 10
          zero = "0"
        end
        if minute < 10
          zero_m = "0"
        end
        final_time = "#{zero}#{hour}:#{zero_m}#{minute}#{period}"
      else
        period = "PM"
        if hour == 12
          if minute < 10
            zero_m = "0"
          end
          final_time = "12:#{zero_m}#{minute}#{period}"
        else
          hour = hour.modulo(12)
          if hour < 10
            zero = "0"
          end
          if minute < 10
            zero_m = "0"
          end
          final_time = "#{zero}#{hour}:#{zero_m}#{minute}#{period}"
        end
      end
    end
  else
    puts "Wrong input!"
    return
  end
  today_activities = {}
  puts "What is the activity for this time?"
  activity = gets.chomp
  puts "Is it the last activity that you would like to input (Y/N)?"
  last_activity = gets.chomp
  today_activities[final_time] = activity
end
puts today_activities
# puts "Your activities today are:"
