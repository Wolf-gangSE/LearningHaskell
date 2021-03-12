repete :: Int -> [[Int]]
repete 0 = []
repete n = map (const n) [1..n] : repete (n-1)

--
repete' :: Int -> [Int]
repete' n = concat [[x | _ <- [1 .. x]] | x <- ns]
            where
                ns = reverse  [1 .. n]