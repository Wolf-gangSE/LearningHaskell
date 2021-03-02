replicate' :: Int -> a -> [a]
replicate' 0 a = []
replicate' n a
    | n > 0 = a: replicate' (n-1) a