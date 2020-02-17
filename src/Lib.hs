module Lib where

ssplit :: String -> Char -> [String]
ssplit [] delim = [""]
ssplit (c:cs) delim
    | c == delim = "" : rest
    | otherwise = (c : head rest) : tail rest
    where
        rest = ssplit cs delim
