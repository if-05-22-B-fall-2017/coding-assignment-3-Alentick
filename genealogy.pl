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
female(eva).
female(lisa).
female(anne).
male(pat).
male(jacob).
female(carol).

grandparent(X,Y) :- parent(X,Z), parent(Z,Y).
ancestor(X,Z) :- parent(X,Z).
ancestor(X,Z) :- parent(X,Y), ancestor(Y,Z).

/*[a,b,c].*/
isHead([Head|_], Head).
isTail([_|Tail], Tail).
isMember(Head,[Head|_]).
isMember(X,[_|Tail]) :- isMember(X,Tail).

concatenate([], L, L).
concatenate([H|T], L, [H|ExtendedTail]) :- concatenate(T, L, ExtendedTail).

prepend().
prepend() :- prepend().

addElement().
addElement() :- addElement().

hasLentgh().
hasLentgh() :- hasLentgh().

remove().
remove() :- remove().
