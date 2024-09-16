soma2l :: [Integer] -> [Integer] -> [Integer]
soma2l lst [] = lst
soma2l [] lst = lst
soma2l (a:xs) (b:ys) = a+b : soma2l xs ys
