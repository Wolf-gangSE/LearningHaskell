--Losta de exercícios sobre funções recursivas, funções de alta ordem e compreensão de listas
import Data.List

gerarListaDupla :: (Num b, Enum b) => [a] -> [(a, b)]
gerarListaDupla lista = zip lista [0..]

maior :: (Ord a, Ord b, Num b, Enum b) => [a] -> (a, b)
maior lista = last $ sort $ gerarListaDupla lista 

maiorAB :: Ord a => (a, b) -> (a, b) -> (a, b)
maiorAB (a, b) (c,d)
    | a > c = (a,b)
    | otherwise = (c,d)
    
maior2 :: (Ord a, Num b, Enum b) => [a] -> (a, b)
maior2 lista = foldr maiorAB (head tuplas) tuplas
                where
                    tuplas = gerarListaDupla lista

