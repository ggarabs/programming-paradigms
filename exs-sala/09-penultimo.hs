penult :: String -> Char
penult [a, b] = a
penult (a:xs) = penult xs
