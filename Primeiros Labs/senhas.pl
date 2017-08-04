printLetra(0, [H|T], H).
printLetra(I, [H|T], C) :- Z is I - 1, printLetra(Z, T, C).

:- initialization main.

main:-
	read_line_to_codes(user_input, A2),
	string_to_atom(A2,A1),
	atom_number(A1,A),
	read_line_to_codes(user_input, B2),
	string_to_atom(B2,B1),
	atom_number(B1,B),
	read_line_to_codes(user_input, C2),
	string_to_atom(C2,C1),
	atom_number(C1,C),
	read_line_to_codes(user_input, D2),
	string_to_atom(D2,D1),
	atom_number(D1,D),
	read_line_to_codes(user_input, E2),
	string_to_atom(E2,E),
	string_chars(E, L1),
	read_line_to_codes(user_input, F2),
	string_to_atom(F2,F),
	string_chars(F, L2),
	read_line_to_codes(user_input, G2),
	string_to_atom(G2,G),
	string_chars(G, L3),
	read_line_to_codes(user_input, H2),
	string_to_atom(H2,H),
	string_chars(H, L4),
	printLetra(A, L1, Z1),
	printLetra(B, L2, Z2),
	printLetra(C, L3, Z3),
	printLetra(D, L4, Z4),
	write(Z1),
	write(Z2),
	write(Z3),
	write(Z4), nl.
