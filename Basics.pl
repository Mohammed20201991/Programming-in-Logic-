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
 
