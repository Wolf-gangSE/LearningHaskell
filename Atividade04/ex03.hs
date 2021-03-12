data Arvore a = Folha a | No (Arvore a) (Arvore a)
qtFolhas :: Arvore a -> Int 
qtFolhas (Folha _) = 1
qtFolhas (No esq dir) = qtFolhas esq + qtFolhas dir

balanceada :: Arvore a -> Bool
balanceada (Folha a) = True
balanceada (No esq dir) = abs (qtFolhas esq - qtFolhas dir) < 2 && balanceada esq && balanceada dir