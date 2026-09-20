male(salem).
male(abdulmohsen).
male(saad).

female(husniah).
female(lama).
female(areej).
female(maies).

parent(salem, lama).
parent(salem, areej).
parent(salem, maies).
parent(salem, abdulmohsen).
parent(salem, saad).

parent(husniah, lama).
parent(husniah, areej).
parent(husniah, maies).
parent(husniah, abdulmohsen).
parent(husniah, saad).

father(X, Y) :- 
    male(X), 
    parent(X, Y).

mother(X, Y) :- 
    female(X), 
    parent(X, Y).

brother(X, Y) :- 
    male(X), 
    parent(Z, X), 
    parent(Z, Y), 
    X \= Y.

sister(X, Y) :- 
    female(X), 
    parent(Z, X), 
    parent(Z, Y), 
    X \= Y.