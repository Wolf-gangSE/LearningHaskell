pegar :: Int -> [a] -> [a]
pegar 0 (x:xs) = []
pegar n (x:xs) 
    | n <= length (x:xs) = x: pegar (n-1) xs