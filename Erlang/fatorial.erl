% c(teste).
% teste:func().

% 1 - fatorial: recebe um numero natural e retorna o seu fatorial

% loop será resolvido com recursao no erlang

-module(fatorial).

-export([main/1]).

main(X) ->
  calc_fatorial(X).

fatorial(N) when N == 0 -> 1;
fatorial(N) when N > 0 -> N * fatorial(N-1).

calc_fatorial(X) -> 
  Y = fatorial(X),
  io:fwrite("Fatorial de ~p é: ~p\n", [X, Y]).