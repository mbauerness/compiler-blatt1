module Main where

import System.IO (BufferMode (NoBuffering), hSetBuffering, stdout)
import Lib (square, ggt)

main :: IO ()
main = do
    hSetBuffering stdout NoBuffering

    putStr "Please provide a number: "
    a <- readLn :: IO Integer
    putStr "And a second number: "
    b <- readLn :: IO Integer

    putStrLn("The gcd of " ++ show a ++ " and " ++ show b ++ " is: " ++ show (ggt a b))