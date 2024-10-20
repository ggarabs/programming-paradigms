soma2l(L, [], L).
soma2l([], L, L).
soma2l([A | As], [B | Bs], [R|Rs]) :- soma2l(As, Bs, Rs), R is A+B.
