%Facts
female(maha).
female(shahad).
female(layla).
male(mohammed).
male(faisal).
male(fahad).

parent(maha, shahad).
parent(maha, layla).
parent(maha, faisal).
parent(maha, fahad).
parent(mohammed, shahad).
parent(mohammed, faisal).
parent(mohammed, layla).
parent(mohammed, fahad).


%Rules
mother(M, K) :-
    female(M),
    parent(M, K).

father(F, K) :-
    male(F),
    parent(F, K).

sister(S, X) :-
    female(S),
    parent(P, S),
    parent(P, X),
    S \= X.

brother(B, X) :-
    male(B),
    parent(P, B),
    parent(P, X),
    B \= X.
