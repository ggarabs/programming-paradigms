soma([], R) :- R is 0.
soma([A | As], R) :- soma(As, R1), R is R1+A.
