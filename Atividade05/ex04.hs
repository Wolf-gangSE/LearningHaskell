import System.IO

obterChar:: IO Char 
obterChar = do x <- getChar
               return x

obterLinha :: IO String
obterLinha = do x <- obterChar
                case x of 
                    '\b' -> do b <- obterLinha
                               return ('\b':b)
                    '\DEL' -> do d <- obterLinha
                                 return ('\DEL':d)
                    '\n' -> return []
                    _ -> do s <- obterLinha
                            return (x:s)

-- (a:m:a:n:\DEL)