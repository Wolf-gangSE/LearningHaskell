merge :: Ord a => [a] -> [a] -> [a]
merge [] [] = []
merge [] (y:ys) = y:ys
merge (x:xs) [] = x:xs
merge (x:xs) (y:ys) | x < y = x: merge xs (y:ys)
                    | otherwise = y: merge (x:xs) ys

metades :: [a] -> ([a],[a])
metades xs = (take lenx xs, drop lenx xs)
            where lenx = length xs `div` 2

mergesort :: Ord a => [a] -> [a]
mergesort [] = []
mergesort [x] = [x]
mergesort xs = merge (mergesort d) (mergesort e)
                where (d,e) = metades xs