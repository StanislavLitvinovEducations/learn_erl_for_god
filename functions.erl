-module(functions).
-compile(export_all).

head([H|_]) -> H.

second([_, H|_]) -> H.

same(X,X) ->
  true;
same(_,_) ->
  false.

valid_time({Date = {Y, M, D}, Time = {H, Min, S}}) ->
  io:format("Кортеж даты (~p) говорит сегодня: ~p/~p/~p, ~n", [Date, Y, M, D]),
  io:format("Кортеж времени (~p) показывает: ~p/~p/~p, ~n", [Time, H, Min, S]);
valid_time(_) ->
  io:format("Перестань мне давать незнакомые данные!~n").
