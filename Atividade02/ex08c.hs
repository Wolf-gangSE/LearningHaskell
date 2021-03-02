ultimo :: [a] -> a
ultimo (x:xs) 
    | length (x:xs) > 1 = ultimo xs
    | length (x:xs) == 1 = x