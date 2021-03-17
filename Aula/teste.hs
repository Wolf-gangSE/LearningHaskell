--diferença entre getChar e putChar
main :: IO()
main = do 
    a <- getChar 
    putChar 'a'

acao :: IO (Char,Char)
acao = do 
        x <- getChar
        getChar
        y <- getChar
        return (x,y)

putStr' :: String -> IO ()
putStr' [] = return ()
putStr' (x:xs) = do putChar x
                    putStr' xs