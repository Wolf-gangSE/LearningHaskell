--aplicação com compreensão de lista e sequence
putStr'' :: String -> IO ()
putStr'' xs = sequence_ (map putChar [x | x <- xs])