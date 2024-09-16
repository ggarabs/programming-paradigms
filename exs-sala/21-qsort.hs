partit _ [] = ([], [])
partit elt lst = parte elt lst [] []

parte elt [] lmen lmai = (lmen, lmai) 
parte elt (a:xs) lmen lmai
 | a <= elt = parte elt xs (lmen++[a]) lmai
 | otherwise = parte elt xs lmen (lmai++[a])

qsort [] = []
qsort [a] = [a]
qsort (a:xs) = (qsort l1) ++ [a] ++ (qsort l2)
  where aux = partit a xs
        l1 = pri aux
        l2 = seg aux

pri (x, _) = x
seg (_, x) = x
