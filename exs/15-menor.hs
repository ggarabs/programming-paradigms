obtemMenor :: Ord a => a -> [a] -> a
obtemMenor elt [] = elt
obtemMenor elt (a:xs)
 | a < elt = obtemMenor a xs
 | otherwise = obtemMenor elt xs

menor :: Ord a => [a] -> a
menor [a] = a
menor (a:xs) = obtemMenor a xs
