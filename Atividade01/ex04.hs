replicate' :: Int -> b -> [b]
replicate' a b = [b | b <- [b], a <- [1..a]]