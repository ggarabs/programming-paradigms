totk :: (Num a, Eq a) => a -> [a] -> [a]
totk _ [] = []
totk num (a:xs) = totkHelper num 1 xs [a]

soma :: (Num a, Eq a) => [a] -> a
soma [] = 0
soma (a:xs) = a + soma xs

totkHelper :: (Num a, Eq a) => a -> a -> [a] -> [a] -> [a]
totkHelper _ 0 [] [] = []
totkHelper _ num [] lst = [soma lst]
totkHelper num cont (a:xs) auxlist
 | cont == num = (soma auxlist):(totkHelper num 1 xs [a])
 | otherwise = totkHelper num (cont+1) xs (auxlist++[a])
