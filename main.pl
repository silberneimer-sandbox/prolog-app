get_string(String) :-
  current_input(Input),
  read_string(Input, ' \n', '', _, String).

get_number(Number) :-
  get_string(String),
  number_string(Number, String).

main :-
  get_number(A),
  get_number(B),
  get_number(C),
  get_string(S),
  Sum is A + B + C,
  write(Sum),
  write(' '),
  write(S).

:- main.