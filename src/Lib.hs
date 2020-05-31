module Lib
    ( twoDMultiply
    ) where

import Data.List (transpose)


dotProduct :: Num a => [a] -> [a] -> a
dotProduct a b = sum (zipWith (*) a b)


calcDotProducts :: Num a => [a] -> [[a]] -> [a]
calcDotProducts a b = map (\x -> dotProduct x a) b


twoDMultiply :: Num a => [[a]] -> [[a]] -> [[a]]
twoDMultiply a b = map (\x -> calcDotProducts x bT) a 
        where bT = transpose b

