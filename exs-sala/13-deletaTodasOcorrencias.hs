dellal :: Eq a => a -> [a] -> [a]
dellal elt [] = []
dellal elt (a:xs)
 | elt == a = dellal elt xs
 | otherwise = a : dellal elt xs
