%	Program 3.21: Insertion sort


/*
	insertSort(Xs,Ys) :- 
		The list Ys is an ordered permutation of the list Xs.
                PreCond: Xs is a list of numbers.
*/

	insertSort([X|Xs],Ys) :- insertSort(Xs,Zs), insert(Zs,X,Ys).
	insertSort([],[]).

	insert([],X,[X]).
	insert([Y|Ys],X,[X,Y|Ys]) :- X =< Y.
	insert([Y|Ys],X,[Y|Zs]) :- X > Y, insert(Ys,X,Zs).

