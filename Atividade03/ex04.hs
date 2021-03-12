import Data.List

impares :: [Int] -> [Int]
impares xs = sort [x | x <- xs, odd x]