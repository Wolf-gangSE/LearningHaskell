-- solução 1
delete :: [a] -> Int -> [a]
delete [] _ = []
delete xs a = take a xs ++ drop (a+1) xs

-- solução 2 (recursiva)
delete2 xs a = deleteRec xs a 0
deleteRec (x:xs) n i
    | n == i = xs
    | otherwise = x : deleteRec xs n (i+1)