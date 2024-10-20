split :: [a] -> ([a], [a])
split [] = ([], [])
split lst = divide [] [] lst

divide :: [a] -> [a] -> [a] -> ([a], [a])
divide l1 l2 [] = (l1, l2)
divide l1 l2 [a] = ((l1++[a]), l2)
divide l1 l2 (a:(b:xs)) = divide (l1++[a]) (l2++[b]) xs
