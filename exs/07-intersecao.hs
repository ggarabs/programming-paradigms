membro :: Eq a => [a] -> [a] -> Bool
membro elt [] = False
membro elt (a:xs)
 | elt == a = True
 | otherwise = membro elt xs

inters :: Eq a => [a] -> [a] -> [a]
inters lst [] = []
inters [] lst = []
inters (a:xs) lst
 | membro a lst == True = (a: inters xs lst)
 | otherwise = inters xs lst
