import Text.Printf

numero n = read n :: Double

main :: IO()
main = do
    x <- getLine
    y <- getLine
    printf "%.3f km/l\n" $ (numero x)/(numero y)