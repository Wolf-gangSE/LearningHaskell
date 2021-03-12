import Text.Printf

salario sf mt = sf + (0.15 * mt)

numero n = read n :: Double

main :: IO()
main = do
    n <- getLine
    sf <- getLine
    mt <- getLine
    putStrLn ("TOTAL = R$ " ++ printf "%.2f" (salario (numero sf) (numero mt)))