delk :: Eq a => Int -> [a] -> [a]
delk _ [] = []
delk num lst = delkHelper num lst 1

delkHelper :: Eq a => Int -> [a] -> Int -> [a]
delkHelper _ [] _ = []
delkHelper num (a:xs) cont
 | cont == num = delkHelper num xs 1
 | otherwise = (a:(delkHelper num xs (cont+1)))
