dup :: [a] -> [a]
dup [] = []
dup (a:xs) = a:a:(dup xs)
