% Fibonacci numbers
% The Fibonacci sequence is given by 0, 1, 1, 2, 3, 5, … where subsequent values are given by adding the two previous values in the sequence.
%
% Give a recursive definition of the function fib/1 computing the Fibonacci numbers, and give a step-by-step evaluation of fib(4).
%
% Usage:
% 1> fibonacci:fib(5).
% 1> 8

-module(fib).

-export([fib/1]).

fib(X) when X < 2 ->
    1;
fib(X) when X >= 2 ->
    fib(X - 1) + fib(X - 2).
