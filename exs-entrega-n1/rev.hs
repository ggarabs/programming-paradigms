rev :: [a] -> [a]
rev [] = []
rev list = revHelper list []

revHelper :: [a] -> [a] -> [a]
revHelper [] lst = lst
revHelper (a:xs) aux = revHelper xs (a:aux)
