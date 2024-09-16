pegn :: (Ord a, Num a) => a -> [a] -> [a]
pegn 0 lst = []
pegn _ [] = []
pegn elt (a:xs) = a:(pegn (elt-1) xs)
