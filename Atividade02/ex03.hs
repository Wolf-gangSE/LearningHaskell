(^^^) :: (Num a, Ord a) => a -> a -> a
x^^^0 = 1
x^^^n | x > 0 = x * (x^^^(n-1))