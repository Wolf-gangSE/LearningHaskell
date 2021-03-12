import Text.Printf

maiorAB a b = (a + b + abs (a - b)) `div` 2

numero n = read n :: Int

main :: IO()
main = do 
    xs <- getLine :: IO String
    let [n1, n2, n3] = words xs
    printf "%d eh o maior\n" (maiorAB (maiorAB (numero n1) (numero n2)) (numero n3))