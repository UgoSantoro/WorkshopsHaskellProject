module Tips where

readline :: IO ()
readline = do
    putStr "> "
    x <- getLine
    putStrLn x

listbool :: String -> String -> Bool
listbool res [] = True
listbool [] res = False
