data Arvore a = Folha a | No (Arvore a) (Arvore a)

metades :: [a] -> ([a],[a])
metades xs = (take lenx xs, drop lenx xs)
            where lenx = length xs `div` 2

balancear :: [a] -> Arvore a
balancear [x] = Folha x
balancear xs = No (balancear esq) (balancear dir)
                where
                    (esq,dir) = metades xs