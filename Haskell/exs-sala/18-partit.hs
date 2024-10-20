partit :: Ord a => a -> [a] -> ([a], [a])
partit _ [] = ([], [])
partit elt lst = parte elt lst [] []

parte :: Ord a => a -> [a] -> [a] -> [a] -> ([a], [a])
parte elt [] lmen lmai = (lmen, lmai) 
parte elt (a:xs) lmen lmai
 | a <= elt = parte elt xs (lmen++[a]) lmai
 | otherwise = parte elt xs lmen (lmai++[a])
