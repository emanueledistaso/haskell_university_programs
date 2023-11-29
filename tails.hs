-- Function that takes a list and outputs the list of tails

tails :: [a] -> [[a]]
tails [] = [[]]
tails (x:xs) = (x:xs) : tails xs