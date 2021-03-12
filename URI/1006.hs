import Text.Printf

media n1 n2 n3 = ((2.0 * n1) + (3.0 * n2) + (5.0 * n3))  / 10.0

numero n = read n :: Double

main :: IO ()
main = do
    n1 <- getLine
    n2 <- getLine
    n3 <- getLine
    putStrLn ("MEDIA = " ++ printf "%.1f" (media (numero n1) (numero n2) (numero n3)))