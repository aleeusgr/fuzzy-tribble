module Main where


main :: IO ()

main = do  
    name <- getLine  
    putStrLn ("Hey " ++ name ++ ", you rock!")  

