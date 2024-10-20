soma([], 0).
soma(L, S) :- aux(L, 0, S).

aux([], Sac, Sac).
aux([A|As], Sac, S) :- R1 is Sac+A, aux(As, R1, S).
