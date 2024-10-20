data T = F Int | N Int T T
  deriving (Eq, Show)

q2 (F n) = (F (altura (F n)))
q2 (N n te td) = (N (altura (N n te td)) (q2 te) (q2 td))

altura (F n) = 1
altura (N n te td) = 1 + (maior (altura te) (altura td))

maior a b
 | a > b = a
 | otherwise = b
