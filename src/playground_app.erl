%%%-------------------------------------------------------------------
%% @doc playground public API
%% @end
%%%-------------------------------------------------------------------

-module(playground_app).

-behaviour(application).

-export([start/2, stop/1]).

start(_StartType, _StartArgs) ->
    Dispatch = cowboy_router:compile([{'_', [{"/", echo_http, []}]}]),
    {ok, _} = cowboy:start_clear(http, [{port, 8081}], #{env => #{dispatch => Dispatch}}),

    playground_sup:start_link().

stop(_State) ->
    ok = cowboy:stop_listener(http),
    ok.

%% internal functions
