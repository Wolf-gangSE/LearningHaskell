 euclides :: Int -> Int -> Int
 euclides a b 
    | a == b = a
    | a < b = euclides a (b-a)
    | otherwise = euclides b (a-b)