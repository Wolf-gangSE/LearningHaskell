--solução 1
inserir :: [Int] -> Int -> Int -> [Int]
inserir xs pos elem = take pos xs ++ [elem] ++ drop pos xs

--solução 2 (recursiva)
inserir2 pos elem  = inserirRec pos elem 0

inserirRec pos elem cont xs
    | xs == [] = []
    | pos == cont = elem : xs
    | otherwise = head xs : inserirRec pos elem (cont+1) (tail xs)