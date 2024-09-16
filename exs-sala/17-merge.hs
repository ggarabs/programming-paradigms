merge :: (Ord a) => [a] -> [a] -> [a]
merge [] lst = lst
merge lst [] = lst
merge (a:xs) (b:ys)
 | a <= b = a:(merge xs (b:ys))
 | otherwise = b:(merge (a:xs) ys)
