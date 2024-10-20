rleCod :: Eq a => [a] -> [(a, Int)]
rleCod [] = []
rleCod (a:xs) = codifica 1 a xs

codifica :: Eq a => Int -> a -> [a] -> [(a, Int)]
codifica qtd letra [] = [(letra, qtd)]
codifica qtd letra (a:xs)
 | letra == a = codifica (qtd+1) a xs
 | otherwise = (letra, qtd):(codifica 1 a xs)
