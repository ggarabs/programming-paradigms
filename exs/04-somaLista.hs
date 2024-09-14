somaLista :: [Integer] -> Integer
somaLista [] = 0
somaLista (b:xs) = b + somaLista xs
