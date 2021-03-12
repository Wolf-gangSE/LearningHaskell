posicao :: Int -> [a] -> a
posicao n xs = head $ drop n xs

--
posicao2 :: Int -> [a] -> Maybe a
posicao2 _ [] = Nothing 
posicao2 0 (x:xs) = Just x
posicao2 p (x:xs) = posicao2 (p-1) xs