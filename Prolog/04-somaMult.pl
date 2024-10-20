somaMult([], 0, 0).
somaMult([A|As], S, M) :- sm([A|As], 0, 1, S, M).

sm([], Sac, Mac, Sac, Mac).
sm([A|As], Sac, Mac, S, M) :- 
	R1 is Sac+A, 
	R2 is Mac*A,
	sm(As, R1, R2, S, M).

