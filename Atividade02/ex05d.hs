(!!!) :: [a] -> Int -> a
(x:xs) !!! 0 = x
(x:xs) !!! b
    | b > 0 = xs !!! (b-1)