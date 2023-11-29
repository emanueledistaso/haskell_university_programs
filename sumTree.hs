data BTree a = Empty | Node a (BTree a) (BTree a) deriving (Show, Eq)

sumTree :: (Num a) => BTree a-> a
sumTree Empty = 0
sumTree (Node x left right) = x + sumTree left + sumTree right