module Scales where
import Base

cycle_n :: Int -> [a] -> [a]
cycle_n 0 list = list
cycle_n 1 list = (tail list) ++ [head list]
cycle_n n list = cycle_n (n - 1) (cycle_n 1 list)

ionian = [W, W, H, W, W, W, H]

[dorian, phrygian,lydian, mixolydian, aeolian, locrian] = [cycle_n n ionian | n <- [1..6]]

wholeTone = [W, W, W, W, W, W]
