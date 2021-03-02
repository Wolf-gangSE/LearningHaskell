merge :: Ord a => [a] -> [a] -> [a]
merge [] [] = []
merge [] (y:ys) = y:ys
merge (x:xs) [] = x:xs
merge (x:xs) (y:ys) | x < y = x: merge xs (y:ys)
                    | otherwise = y: merge (x:xs) ys