% fib(0, 1).
% fib(1, 1).

% fib(X, N) :-
%     X > 1,
%     X1 is X - 1,
%     X2 is X - 2,
%     fib(X1, N1),
%     fib(X2, N2),
%     N is N1 + N2.

fib2(0, 0, 1).
fib2(1, 1, 1).

fib2(X, A, B) :-
    X > 1,
    X1 is X - 1,
    fib2(X1, Y, A),
    B is A + Y.

fib(X, N) :- fib2(X, _ , N). 