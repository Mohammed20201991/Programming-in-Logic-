%% PreCond: As or Bs or Cs is proper list.
%%
%% xorLists(As,Bs,Cs) :-
%%     the bitwise xor of As and Bs yields Cs where As, Bs and Cs are proper lists of bits, and their lengths are equal.

%% Solution:

xorLists([],[],[]).
xorLists([A|As],[B|Bs],[C|Cs]) :-
    xor(A,B,C), xorLists(As,Bs,Cs).

xor(0,0,0).    xor(0,1,1).    xor(1,0,1).    xor(1,1,0).

%%% xor(A,B,C):- ((A=0,B=0 )-> C=0
%%% 	        ;((A=1,B=1 )-> C= 0)
%%% 	        ;((A=1,B=0 )-> C= 1)
%%% 	        ;((A=0,B=1 )-> C= 1)).

% Goal 
As = [0,0],  Bs = [0,0],    C = 0,  D = 0 ? ;
As = [0,0],  Bs = [0,1],    C = 0,  D = 1 ? ;
As = [0,1],  Bs = [0,0],    C = 0,  D = 1 ? ;
As = [0,1],  Bs = [0,1],    C = 0,  D = 0 ? ;
As = [0,0],  Bs = [1,0],    C = 1,  D = 0 ? ;
As = [0,0],  Bs = [1,1],    C = 1,  D = 1 ? ;
As = [0,1],  Bs = [1,0],    C = 1,  D = 1 ? ;
As = [0,1],  Bs = [1,1],    C = 1,  D = 0 ? ;
As = [1,0],  Bs = [0,0],    C = 1,  D = 0 ? ;
As = [1,0],  Bs = [0,1],    C = 1,  D = 1 ? ;
As = [1,1],  Bs = [0,0],    C = 1,  D = 1 ? ;
As = [1,1],  Bs = [0,1],    C = 1,  D = 0 ? ;
As = [1,0],  Bs = [1,0],    C = 0,  D = 0 ? ;
As = [1,0],  Bs = [1,1],    C = 0,  D = 1 ? ;
As = [1,1],  Bs = [1,0],    C = 0,  D = 1 ? ;
As = [1,1],  Bs = [1,1],    C = 0,  D = 0 ? ;
no
*/


%---------------------------------------------------
|N is 2^K*M where K and M are nonnegative integers.|
%---------------------------------------------------
%% Solution:

'Nis2^K*M'(N,K,M) :- nkm(N,0,K,M).

nkm(N,A,A,N).
nkm(N,A,K,M) :-
    N mod 2 =:= 0,
    N2 is N // 2, A1 is A+1,
    nkm(N2,A1,K,M). 
    
% Goal
| ?- 'Nis2^K*M'(5,K,M).
K = 0,    M = 5 ? ;
no
| ?- 'Nis2^K*M'(10,K,M).
K = 0,    M = 10 ? ;
K = 1,    M = 5 ? ;
no
