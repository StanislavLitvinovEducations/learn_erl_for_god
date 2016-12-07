-module(useless).
-export([add/2, hello/0, greet_and_add_two/1, greet/2]).

add(X, Y) ->
  X + Y.

hello() ->
  io:format("Hello, World!!!\n").

greet_and_add_two(X) ->
  hello(),
  add(X, 2).

greet(male, Name) ->
  io:format("Hello, Mr. ~s!\n", [Name]);
greet(female, Name) ->
  io:format("Hello, Ms. ~s!\n", [Name]);
greet(_, Name) ->
  io:format("Hello, ~s!\n", [Name]).
