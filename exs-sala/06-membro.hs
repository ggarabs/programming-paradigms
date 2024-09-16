membro :: Eq a => a -> [a] -> Bool
membro elt [] = False
membro elt (a:xs) 
 | elt == a = True
 | otherwise = membro elt xs
