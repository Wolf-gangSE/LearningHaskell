and' :: [Bool] -> Bool
and' (x:xs)
    |length (x:xs) == 1 = x
    | x = and' xs
    | otherwise = False