
square_aux(0, M, X).

square_aux(N, M, X) :-
    N > 0,
    write_line(M, X),
    nl, 
    N1 is N-1,
    square_aux(N1, M, X).

write_line(0, X).

write_line(N, X) :-
    N > 0,
    write(X),
    N1 is N-1,
    write_line(N1, X).

square(N, X):-
    square_aux(N, N, X).