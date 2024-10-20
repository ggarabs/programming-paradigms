repete :: (a, Int) -> [a]
repete (_, 0) = []
repete (a, b) = [a]++(repete (a, b-1))

rleDec :: [(a, Int)] -> [a]
rleDec [] = []
rleDec (a:xs) = (repete a)++(rleDec xs)
