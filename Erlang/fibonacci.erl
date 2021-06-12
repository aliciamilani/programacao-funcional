% c(teste).
% teste:func().

% fibonacci: recebe um número inteiro positivo e retorna o n-ésimo 
% elemento da seqüência de Fibonacci


-module(fibonacci).

-export([main/1]).

main(X) ->
  calc_fibonacci(X).

fib(N) when N < 2 -> N;
fib(N) when N > 1 -> fib(N-1) + fib(N-2).

calc_fibonacci(X) -> 
  Y = fib(X),
  io:fwrite("Fibonacci de ~p é: ~p\n", [X, Y]).