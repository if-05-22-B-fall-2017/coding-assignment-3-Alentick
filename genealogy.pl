parent(adam,john).
parent(eve,john).
parent(eve,lisa).
parent(john,anne).
parent(john,pat).
parent(pat,jacob).
parent(carol,jacob).

/*parent(X,pat).*/

/*parent(lisa,X).*/

male(adam).
male(john).
male(pat).
male(jacob).
female(eva).
female(lisa).
female(anne).
female(carol).

grandparent(X,Y) :- parent(X,Z), parent(Z,Y).
ancestor(X,Z) :- parent(X,Z).
ancestor(X,Z) :- parent(X,Y), ancestor(Y,Z).

/*[a,b,c].*/
isHead([Head|_], Head).
isTail([_|Tail], Tail).
isMember(X,[X|_]).
isMember(X,[_|Tail]) :- isMember(X,Tail).

concatenate([], L, L).
concatenate([H|T], L, [H|ExtendedTail]) :- concatenate(T, L, ExtendedTail).

prepend(X,_,[X|_]).
prepend(X,Y,[X|Y]) :- prepend(X,Y,[X|Y]).

addElement(X,[],[X]).
addElement(X, [H|T], [H|Z]) :- addElement(X,T,Z).

hasLentgh([],0).
hasLentgh([_|X],L) :- hasLentgh(X,N),L is N+1.

remove(_,[],[]).
remove(X,[X|L1],L2) :- remove(X,L1,L2).
remove(X,[H|L1],[H|L2]) :- X\==H,remove(X,L1,L2).
