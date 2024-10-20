split [] = ([],[])
split lst = splita [] [] lst

splita l1 l2 [] = (l1, l2)
splita l1 l2 [a] = ((l1++[a]), l2)
splita l1 l2 (a:(b:xs)) = splita (l1++[a]) (l2++[b]) xs

merge [] lst = lst
merge lst [] = lst
merge (a:xs) (b:ys)
 | a <= b = a:(merge xs (b:ys))
 | otherwise = b:(merge (a:xs) ys)

msort [] = []
msort [a] = [a]
msort list = merge (msort l1) (msort l2)
 where aux = split list
       l1 = pri aux
       l2 = seg aux

pri (x, _) = x
seg (_, x) = x
