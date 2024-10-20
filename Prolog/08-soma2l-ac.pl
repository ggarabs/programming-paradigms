soma2lac(L1, L2, R) :- soma2lac(L1, L2, [], R).

soma2lac([], L, Lst, R) :- append(Lst, L, R).
soma2lac(L, [], Lst, R) :- append(Lst, L, R).
soma2lac([A|As], [B|Bs], Lst, R) :- 
	S is A+B, 
	append(Lst, [S], Lst2), 
	soma2lac(As, Bs, Lst2, R).
