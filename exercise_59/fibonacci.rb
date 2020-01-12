def iterative_nth_fibonacci_number(n)
  return 0 if n == 0
  return 1 if n < 3 && n > 0
  resault, last_resault = 1, 1
  for i in 3..n
    resault, last_resault = resault + last_resault, resault
  end
  return resault
end

p iterative_nth_fibonacci_number(23)

def recursive_nth_fibonacci_number(n)
  return 0 if n == 0
  return 1 if n < 3 && n > 0
  recursive_nth_fibonacci_number(n - 1) + recursive_nth_fibonacci_number(n - 2)
end

p recursive_nth_fibonacci_number(23)
