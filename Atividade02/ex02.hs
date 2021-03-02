somar :: Int -> Int
somar 0 = 0
somar n | n > 0 = n + somar(n-1)
