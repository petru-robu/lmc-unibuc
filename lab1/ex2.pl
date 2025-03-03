female(mary).
female(sandra).
female(juliet).
female(lisa).
male(peter).
male(paul).
male(dony).
male(bob).
male(harry).
parent(bob, lisa).
parent(bob, paul).
parent(bob, mary).
parent(juliet, lisa).
parent(juliet, paul).
parent(juliet, mary).
parent(peter, harry).
parent(lisa, harry).
parent(mary, dony).
parent(mary, sandra).

father_of(X, Y) :-
    male(X),
    parent(X, Y).

mother_of(X, Y) :-
    female(X),
    parent(X, Y).

grandfather_of(X, Y):-
    male(X),
    parent(X, Z),
    parent(Z, Y).

grandmother_of(X, Y):-
    female(X),
    parent(X, Z),
    parent(Z, Y).

sister_of(X, Y):-
    female(X),
    parent(P1, X),
    parent(P2, Y),
    X \= Y,
    P1 = P2.

brother_of(X, Y):-
    male(X),
    parent(P1, X),
    parent(P2, Y),
    X \= Y,
    P1 = P2.

not_parent(X,Y) :- \+ parent(X,Y).