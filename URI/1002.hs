import Text.Printf

pi' = 3.14159

numero n = read n :: Double

area r = pi' * r ** 2

main :: IO ()
main = do
    r <- getLine
    putStrLn ("A=" ++ printf "%.4f" (area (numero r)))