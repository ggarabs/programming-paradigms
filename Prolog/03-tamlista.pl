tamlista([], R) :- R is 0.
tamlista([_|As],R) :- tamlista(As, R1), R is R1+1.
