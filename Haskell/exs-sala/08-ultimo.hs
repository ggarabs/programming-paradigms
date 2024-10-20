ult :: [Integer] -> Integer
ult [a] = a
ult (a:xs) = ult xs
