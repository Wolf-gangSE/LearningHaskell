--Lista de exercícios sobre funções recursivas
--resolução mais detalhada
data Valor = Indeterminado | Val Integer deriving Show
instance Num Valor where
    Val x + Val y = Val (x+y)
    Val x * Val y = Val (x*y)
    abs (Val n) = Val (abs n)
    signum (Val n) = Val (signum n)
    fromInteger n = Val n
    negate (Val n) = Val (negate n)

fatorial :: Valor -> Valor
fatorial (Val n)  
    | n < 0 = Indeterminado
    | n == 0 || n == 1 = Val 1
    | n > 0 = Val n * fatorial (Val (n - 1))

--resolução simples
fatorial' :: Int -> Int 
fatorial' n
    |n < 0 = 0
    | n == 0 || n == 1 = 1
    | otherwise  = n * fatorial' (n-1)