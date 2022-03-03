%likes(ali,food). 
likes(ali,reading).
likes(nada,food).
likes(nada,swim).
%likes(ali,food),likes(nada,food).
% to represent or we put ; semcolon for reprsenting and we put , comma and we put% not keyword for negation 
%(likes(ali,swim)) ;likes(nada,reading).

%• Variable Names In Prolog:
%1- Begin with character (A … Z) or underscore ( _ ) only.
%2- Follow it character (A … Z , a … z) , digit number or underscore ( _ ).
%3- You must don't use the key words like predicates, clauses and domains.
student(ahmed,22,58.3).
student(samir,21,80.4).
student(laith,20,66.5).
%• Rule Statement : ( If Statement )
%conclusion :-condition .
likes(ali,X) :- likes(nada,X).
%• Input \ Output statements in prolog :
%readchar ( C ) , readint ( H ), readln ( STRING ).
write("the value of X").
%/--------------------------------------------------------- -*/
% sample program to read integer number and print it is cube
cube :- write(" enter number ") , nl , readint (X) , Y= X*X*X , nl.
write(Y).
%• /---------------------------------------------*
%Comments in Prolog :
% Line comment in prolog .
/* Block comment in prolog .*/


/*---------------------------------------------*/

std(ali,(7,5,1986),class2).
std(nada,(4,8,1985),class3).
/* second part */
%% PreCond: true.
%%
%% uneven3List(Xs) :-
%%     The length of list Xs cannot be divided by 3.

/*
| ?- uneven3List([]).
no
| ?- uneven3List([1]).
yes
| ?- uneven3List([1,2]).
yes
| ?- uneven3List([1,B,3]).
no
| ?- uneven3List([a,2,C,d]).
yes
| ?- uneven3List([A,2,3,D,5]).
yes
| ?- uneven3List([A,B,3,d,5,E]).
no
| ?- uneven3List(apple).
no
| ?- uneven3List(2).
no
| ?- uneven3List(Xs).
Xs = [_A] ? ;
Xs = [_A,_B] ? ;
Xs = [_A,_B,_C,_D] ? ;
Xs = [_A,_B,_C,_D,_E] ? ;
Xs = [_A,_B,_C,_D,_E,_F,_G] ? ;
Xs = [_A,_B,_C,_D,_E,_F,_G,_H] ? ;
Xs = [_A,_B,_C,_D,_E,_F,_G,_H,_I,_J] ? ;
Xs = [_A,_B,_C,_D,_E,_F,_G,_H,_I,_J,_K] ? ;
Xs = [_A,_B,_C,_D,_E,_F,_G,_H,_I,_J,_K,_L,_M] ? ;
Xs = [_A,_B,_C,_D,_E,_F,_G,_H,_I,_J,_K,_L,_M,_N] ? ;
Xs = [_A,_B,_C,_D,_E,_F,_G,_H,_I,_J,_K,_L,_M,_N,_O,_P] ? ;
Xs = [_A,_B,_C,_D,_E,_F,_G,_H,_I,_J,_K,_L,_M,_N,_O,_P,_Q] ? ;
Xs = [_A,_B,_C,_D,_E,_F,_G,_H,_I,_J,_K,_L,_M,_N,_O,_P,_Q,_R,_S] ? ;
Xs = [_A,_B,_C,_D,_E,_F,_G,_H,_I,_J,_K,_L,_M,_N,_O,_P,_Q,_R,_S,_T] ? 
yes
*/

%% Solution:
%%% list_len([],0).
%%% list_len([_|Tail],N):- list_len([Tail],N1), N is N1+1.
%%% uneven3List([]):- !.
%%% uneven3List([_X|Xs]) :- uneven3List(Xs).
%uneven3List([_X|Xs]):- n>-1 , list_len(Xs,N)== 3*n+1;list_len(Xs,N)== 3*n+2.


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
test(X,Y):- X = 0, Y= false.
test(X,Y):- X = 1, Y= true.
test(X,Y):- X <> 0, X= <>1,Y = 'erorr'.
				%-------------------------------------
test1(a,right).
test1(b,left).
test1(c,inbtw).
				% Gool
				%?- test1(a,_).
				%test1(a,X).
				%test1(X,right).
				%--------------------------------------
age(ali,22).
age(ahmmed,33).
age(mohammed,30).
				% Gool
				%| ?- age(X,33).
				%X = ahmmed ? ;
				%no
				%-------------------------------------
				% Max function btw 2 numbers 
max(X,Y,Z):- (X> Y ;X=Y) , Z=X.
max(X,Y,Z):- X< Y, Z=Y.

                                %| ?- max(2,2,R).
				%R = 2 ? ;
				%| ?- max(1,-1,R).
				%R = 1 ? ;
				%no

				%--------------------------------------------
				% max funtion btw 3 numbers
max1(X,Y,Z,Q):- X>Y , X>Z, Q=X.
max1(X,Y,Z,Q):- Y>X , Y>Z, Q=Y.
max1(X,Y,Z,Q):- Q=Z.
				%| ?- max1(1,2,3,Q).
				%Q = 3 ? ;
				%no
				% source_info
				%| ?- max1(2,1,0,R).
				%R = 2 ?
				%--------------------------------------
				% multiplcation of 2 numbers
%%% mul(integer,integer,integer).
%%% mult(integer,integer,integer,integer).

mul(N1,N2,S):- mult(N1,N2,1,S).
mult(N1,_,C,S):- C>N1 ,S=0,!.
mult(N1,N2,C,S):- C=C+1,mult(N1,N2,C1,S1),S=S1+N2 .

				%----------------------------------------------
%%% print(B,A):- A<B,!.
%%% print(B,A):- A>=B, write('*'),B1=B+1, print(B1,A).
%%% lines(S,F):- F<S,!.
%%% lines(S,F):- F>=S , print(S,F),nl,F1 = F-1,lines(S,F1).
%%% | ?- lines(2,5).
%%% ! Domain error in argument 1 of print/2
%%% ! expected stream, but found 2
%%% ! goal:  print(2,5)

				%-------------
				% summation for the elments of list
%%% sum([],W):- W=0 ,!.
%%% sum([H|T],W):- sum(T,W1), W=W+1.
sum([],0).
sum([H|T],W):-  sum(T,W1),  W is W1+H.
std(rana,(7,7,1987),class4).
/*-------------------------------------------*/
Max( X,Y,Z):-Z=X,X>Y;Z=Y,Y>X.
/*-----------------------------------------*/
% Assignment Operations :
 A=B=5 
 A=3
 B=9

 /*---------------------------------------*/
%rule for odd number
isodd(X) :- Xmod2><0 .
/*--------------------------------------*/
%progra to solve equation √Z=5X2+2Y
eq(X,Y,Z):-A=5*(X*X),B=2*Y,Z=sqrt(A+B).
/*-------------------------------------*/
%rule for Max number using cut operation.
Max(X,Y,Z) :- X>Y,Z=X,! .
Max(X,Y,Z) :- Z=Y .
 
