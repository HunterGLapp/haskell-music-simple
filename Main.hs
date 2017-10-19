module Main where
import Base
import Scales
import Data.List (intersperse)

main :: IO()
main = do
  print $ showCollection (makeScale_r 0 wholeTone)
  print $ showCollection (makeScale_r 0 locrian)
        
