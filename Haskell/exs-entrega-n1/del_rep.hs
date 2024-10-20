del_rep :: Eq a => [a] -> [a]
del_rep lst = delHelper [] lst

delHelper :: Eq a => [a] -> [a] -> [a]
delHelper lst [] = lst
delHelper lst1 (a:xs) 
 | esta a lst1 == True = delHelper lst1 xs
 | otherwise = delHelper (lst1++[a]) xs

esta :: Eq a => a -> [a] -> Bool
esta i [] = False
esta i (a:xs)
 | i == a = True
 | otherwise = esta i xs
