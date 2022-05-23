%% factorail function 

fact(0,1).
fact(N,F):- (N>0 ->
	      N1 is N-1,
	      fact(N1,F1),
	      F is N*F1).
        
        
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Mode function 
mod(X,Y,X):- X<Y. %less
	mod(X,Y,Z) :- plus(X1,Y,X), mod(X1,Y,Z).
