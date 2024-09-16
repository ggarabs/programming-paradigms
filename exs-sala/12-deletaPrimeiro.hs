delpri :: Eq a => a -> [a] -> [a]
delpri _ [] = []
delpri elt (a:xs) 
 | elt == a = xs
 | otherwise = a:delpri elt xs
