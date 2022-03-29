remover( _, [], []).
remover( R, [R|T], T2) :- remover( R, T, T2).
remover( R, [H|T], [H|T2]) :- H \= R, remover( R, T, T2).
