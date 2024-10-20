tot3 :: Num a => [a] -> [a]
tot3 [] = []
tot3 [a] = [a]
tot3 [a,b] = [a+b]
tot3 (a:(b:(c:xs))) = (a+b+c):tot3 xs
