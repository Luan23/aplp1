contar(A, [], 0).
contar(A, [A|L], X) :- contar(A, L, G), X is 1 + G.
contar(A, [D|L], X) :- contar(A, L, X).

:- initialization main.

main:-
  read_line_to_codes(user_input, A1),
  string_to_atom(A1, A),
  read_line_to_codes(user_input, L2),
  string_chars(L2, L),
  contar(A, L, X),
  write(X).
