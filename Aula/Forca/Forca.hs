import System.IO
import ForcaGame


main :: IO ()
main = do hSetBuffering stdout NoBuffering
          putStrLn "Escreva uma palavra: "
          palavra <- obterLinhaSecreta
          putStrLn "Tente adivinhar: "
          jogar palavra