import Text.Printf

consumo :: Fractional a => a -> a -> a
consumo x y = x / y

numero n = read n :: Double

main :: IO()
main = do
    x <- getLine
    y <- getLine
    printf "%.3f km/l\n" $ consumo (numero x) (numero y)