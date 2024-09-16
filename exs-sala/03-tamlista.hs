tamLista :: [Integer] -> Integer
tamLista [] = 0
tamLista (a:xs) = 1 + tamLista xs
