-- Function that takes a list and outputs the list of heads

inits :: [a] -> [[a]]
inits []=[[]]
inits x = inits (take (n-1) x) ++ [x] where n = length x