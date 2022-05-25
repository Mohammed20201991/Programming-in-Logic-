%	Program : Quicksort
/*
	quickSort(Xs,Ys) :- 
		The list Ys is an ordered permutation of the list Xs.
*/
	quickSort([X|Xs],Ys) :-
		partition(Xs,X,Littles,Bigs),
		quickSort(Littles,Ls),
		quickSort(Bigs,Bs),
		append_(Ls,[X|Bs],Ys).
	quickSort([],[]).

	partition([X|Xs],Y,[X|Ls],Bs) :- X =< Y, partition(Xs,Y,Ls,Bs).
	partition([X|Xs],Y,Ls,[X|Bs]) :- X >  Y, partition(Xs,Y,Ls,Bs).
	partition([],_,[],[]).

