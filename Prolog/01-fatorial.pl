fat(0, 1).
fat(N, R) :- N2 is N-1, fat(N2, R2), R is R2*N.
