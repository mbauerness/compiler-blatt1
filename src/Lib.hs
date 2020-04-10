-- / A Lib module
module Lib
    ( square
    , ggt
    ) where

-- / Calculate the square of a number
square 
  :: (Num a) => a -- ^ the number
  -> a -- ^ the square
square a = a * a

-- / Calculate the greatest common divisor of two numbers
ggt
  :: Integer -- ^ a number
  -> Integer -- ^ another number
  -> Integer -- ^ the greatest common divisor
ggt a b = 
  if b == 0
    then abs a
    else ggt b (a `mod` b)


