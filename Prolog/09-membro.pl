membro(N, [N|_]).
membro(N, [_|As]) :- membro(N, As).
