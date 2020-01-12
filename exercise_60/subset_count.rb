def subset_count(n, k)
  return 1 if k == 0
  return n if k == 1
  return 0 if n == 0 || n < k || n < 0 || k < 0
  subset_count(n - 1, k - 1) + subset_count(n - 1, k)
end

p subset_count(24, 4)
