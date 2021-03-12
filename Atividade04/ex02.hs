data Arvore a = Folha a | No (Arvore a) a (Arvore a)

compare' :: Ord a => a -> a -> Ordering
compare' m n
    | m < n = LT
    | m == n = EQ
    | otherwise = GT

existe :: Ord a => a -> Arvore a -> Bool
existe x (Folha y) = x == y
existe x (No esq y dir) = case compare' x y of
                            LT -> existe x esq
                            EQ -> True
                            GT -> existe x dir