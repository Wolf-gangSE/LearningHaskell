import System.IO
import Text.Printf

numero :: String -> Int
numero n = read n :: Int

somador :: IO ()
somador = do putStr "Quantos números? "
             hFlush stdout
             n <- getLine 
             xs <- sequence [getLine | x <- [1 .. numero n]]
             printf "O total é: %d \n" $ sum (map numero xs)
