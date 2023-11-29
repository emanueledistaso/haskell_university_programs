data BTree a = Empty | Node a (BTree a) (BTree a) deriving (Show, Eq)

-- Function that checks whether a given binary is a Baobab
-- i.e a binary tree where every node contains a number that is greater
-- than the sum of every other node in both subtrees
-- an empty tree (or a leaf) is obviously a Baobab
-- sumTree is in the sumTree.hs file

isBaobab :: (Ord a, Num a) => BTree a -> Bool
isBaobab Empty = True
isBaobab (Node x left right) = x >= (sumTree left + sumTree right) && isBaobab (left) && isBaobab right
