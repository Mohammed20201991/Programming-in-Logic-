%	Program 3.20 Permutation sort
% delete first accournace for element
	select(X,[X|Xs],Xs).
	select(X,[Y|Ys],[Y|Zs]) :- select(X,Ys,Zs).

%	Program 3.19: Selecting an element from a list


/*			       
	permSort(Xs,Ys) :- 
		The list Ys is an ordered permutation of the list Xs.
*/
	
	permSort(Xs,Ys) :- permutation(Xs,Ys), ordered(Ys).

	permutation(Xs,[Z|Zs]) :- select(Z,Xs,Ys), permutation(Ys,Zs).
	permutation([],[]).

	ordered([]).
	ordered([_]).
	ordered([X,Y|Ys]) :- X =< Y, ordered([Y|Ys]).

