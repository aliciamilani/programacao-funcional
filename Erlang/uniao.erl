% c(teste).
% teste:func().

%  uniao: recebe duas listas que não contenham elementos repetidos 
% e retorna uma nova com todos os elementos das duas listas originais 
% (sem repetição)

-module(uniao).

-export([main/2]).

main(Lista1, Lista2) ->
  Aux = Lista2 -- Lista1,
  Result = Lista1 ++ Aux,
  Result.

% uniao:main([3,6,5,7],[2,9,7,5,1]).