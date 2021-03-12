import Text.Printf

salario h sh = h * sh 

numero n = read n :: Double

main :: IO()
main = do
    n <- getLine
    h <- getLine
    sh <- getLine
    putStrLn ("NUMBER = " ++ n)
    putStrLn ("SALARY = U$ " ++ printf "%.2f" (salario (numero h) (numero sh)))