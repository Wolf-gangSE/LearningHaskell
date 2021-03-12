
buscar :: Eq t => t -> [(t, p)] -> p
buscar n ((a,b):xs) 
    | n == a = b 
    | otherwise = buscar n xs

dicionario :: [(Integer, [Char])]
dicionario = [(0, "zero"), (1, "um"), (2, "dois"), (3, "três"), (4, "quatro"), (5, "cinco"), (6, "seis"), (7, "sete"), (8, "oito"), (9, "nove")]

numero :: [[([(Integer, [Char])], b)]] -> [b]
numero = map (buscar dicionario)

