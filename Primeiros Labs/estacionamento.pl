estacionamento(moto,5).
estacionamento(carro,10).
estacionamento(largo,30).

:- initialization main.

main :-
	read_line_to_codes(user_input, A),
	string_to_atom(A,B),
	estacionamento(B, Y),
	write(Y).

