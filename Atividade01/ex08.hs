buscar :: Eq a => a -> [(a,b)] -> [b]
buscar k xs = [v | (k', v) <- xs, k == k']

posicoes x xs = [i | i <- buscar x (zip xs [0 ..])]