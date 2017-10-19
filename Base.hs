module Base where
    
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
            
renorm :: Int -> Int
renorm p = mod p 12
  
sharp p = renorm (p + 1)

flat p = renorm (p - 1)
