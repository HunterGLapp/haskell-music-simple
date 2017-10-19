module Main where
import Base
import Data.List (intersperse)

main :: IO()
main = do
  let cChromatic = map (fst . showPitchClass) pitchClasses
  print (concat (intersperse " " cChromatic))
  
        
