--aplicação "comum"
putStr' :: String -> IO ()
putStr' [] = return ()
putStr' (x:xs) = do putChar x
                    putStr' xs

--aplicação com compreensão de lista e sequence
putStr_ :: String -> IO ()
putStr_ [] = return ()
putStr_ (x:xs) = sequence_ []
