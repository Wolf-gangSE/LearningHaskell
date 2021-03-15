--Lista de exercícios sobre funções recursivas
fatorial :: Int -> Int
fatorial 0 = 1
fatorial n  
    | n > 0 = n * fatorial (n - 1)