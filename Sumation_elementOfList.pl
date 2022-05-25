%% PreCond: Xs is a proper list of numbers.
%%
%% sum_with_alternating_signs(Xs,Sum) :-
%%     Sum is the sum of the elements of Xs with alternating
%%     signs, for example Sum is X1-X2+X3-X4...

sum_with_alternating_signs([],0).
sum_with_alternating_signs([X],[X]). 
sum_with_alternating_signs([X,Y|Xs],Sum0) :-
    sum_with_alternating_signs(Xs,Sum1),
    Sum0 is X-Y+Sum1.
/*
| ?- sum_with_alternating_signs([],Sum).
Sum = 0 ? ;
no
| ?- sum_with_alternating_signs([8],Sum).
Sum = 8 ? ;
no
| ?- sum_with_alternating_signs([8,7],Sum).
Sum = 1 ? ;
no
| ?- sum_with_alternating_signs([8,7,6],Sum).
Sum = 7 ? ;
no
| ?- sum_with_alternating_signs([8,7,6,5],Sum).
Sum = 2 ? ;
no
| ?- sum_with_alternating_signs([8,7,6,5,4],Sum).
Sum = 6 ? ;
no
| ?- sum_with_alternating_signs([8,7,6,5,4,3],Sum).
Sum = 3 ? ;
no
| ?- sum_with_alternating_signs([8,7,6,5,4,3,2],Sum).
Sum = 5 ? ;
no
| ?- sum_with_alternating_signs([8,7,6,5,4,3,2,1],Sum).
Sum = 4 ? ;
no
*/
