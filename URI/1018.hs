import Text.Printf

calcular :: [Integer] -> String -> Integer -> String
calcular [] t _ = t
calcular (nota:notas) t valor =
    calcular notas (t ++ b) (valor `rem` nota)
    where b = printf "%d nota(s) de R$ %d,00\n" (valor `div` nota) $ nota

main :: IO()
main = do
    valor <- readLn :: IO Integer
    putStr $ show valor ++ calcular [100, 50, 20, 10, 5, 2, 1] "\n" valor