import Text.Printf

media n1 n2 = ((3.5 * n1) + (7.5*n2)) / 11.0

numero n = read n :: Double

main :: IO ()
main = do
    n1 <- getLine
    n2 <- getLine
    putStrLn ("MEDIA = " ++ printf "%.5f" (media (numero n1) (numero n2)))