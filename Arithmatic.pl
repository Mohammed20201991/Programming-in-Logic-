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
