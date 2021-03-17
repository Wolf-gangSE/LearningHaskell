--aplicação "comum"
putStr' :: String -> IO ()
putStr' [] = return ()
putStr' (x:xs) = do putChar x
                    putStr' xs

--aplicação com compreensão de lista e sequence
putStr :: String -> IO ()
putStr [] = return ()
putStr (x:xs) = []
