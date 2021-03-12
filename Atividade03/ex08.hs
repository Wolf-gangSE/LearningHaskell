palindromo :: Eq a => [a] -> Bool
palindromo (x:xs) = xs == reverse xs