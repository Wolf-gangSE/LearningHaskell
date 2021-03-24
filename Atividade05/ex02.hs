import System.IO
import Text.Printf

num :: Int -> Int -> IO [String]
num a t = do
            if a == t then 
                return []
            else
                do
                    x <- getLine
                    xs <- num (a+1) t
                    return (x:xs)
numero :: String -> Int
numero n = read n :: Int

somador :: IO ()
somador = do putStr "Quantos números? "
             hFlush stdout
             n <- getLine 
             nums <- num 0 (numero n)
             printf "O total é: %d \n" $ sum (map numero nums)