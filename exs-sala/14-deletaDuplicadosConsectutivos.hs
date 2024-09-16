del2p :: Eq a => [a] -> [a]
del2p [a] = [a]
del2p (a:(b:xs))
 | a /= b = a : del2p (b:xs)
 | otherwise = del2p (b:xs)
