-- Function that generates an infinite pascal's triangle
-- using nextT, a function that generates the next line
-- of a Pascal's triangle from the previous

nextT :: [Int] -> [Int]
nextT [] = [1]
nextT (x:xs) = 1: nxth (x:xs) where
nxth [_] = [1]
nxth (x:y:xs) = x + y : nxth (y:xs)

tartaglia = iterate nextT []