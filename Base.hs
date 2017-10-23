module Base where
import Data.List (intersperse)
    
pitchClasses = [0 .. 11] :: [Int]

showPitchClass :: Int -> (String, String)
showPitchClass 0  = ("C", "Dbb")
showPitchClass 1  = ("C#","Db")
showPitchClass 2  = ("D", "Ebb")
showPitchClass 3  = ("D#", "Eb")
showPitchClass 4  = ("E", "Fb")
showPitchClass 5  = ("F", "Gbb")
showPitchClass 6  = ("F#", "Gb")
showPitchClass 7  = ("G", "Abb")
showPitchClass 8  = ("G#", "Ab")
showPitchClass 9  = ("A", "Bb")
showPitchClass 10 = ("A#", "B")
showPitchClass 11 = ("B", "Cb")

data Step = H | W | T deriving (Show, Eq)

addStep :: Int -> Step -> Int
addStep start H = start + 1
addStep start W = start + 2
addStep start T = start + 3

makeScale :: Int -> [Step] -> [Int]
makeScale start steps = scanl addStep start steps

makeScale_r start steps = map renorm (makeScale start steps)

showCollection :: [Int] -> String
showCollection notes = concat (intersperse " " (map (fst . showPitchClass) notes))
            
renorm :: Int -> Int
renorm p = mod p 12
  
sharp p = renorm (p + 1)

flat p = renorm (p - 1)

--Interval functions
data Interval = Unity | Min2nd | Maj2nd | Min3rd | Maj3rd | P4th | Dim5th | P5th | Min6th | Maj6th | Min7th | Maj7th deriving (Eq, Ord, Show, Enum)
       --   = zipWith (+) [0..11] 
