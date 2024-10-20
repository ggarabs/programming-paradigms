trok2 :: [a] -> [a]
trok2 [] = []
trok2 [a] = [a]
trok2 (a:(b:xs)) = (b:(a:(trok2 xs)))
