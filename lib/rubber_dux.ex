defmodule RubberDux do
  @moduledoc false
  def process(params) do
    separated = String.split(params, " ")
    cond do
      Enum.any?(["webhook", "webhooks"], fn x -> x in separated end) ->
        {:ok, "Are the IPs being whitelisted?\n
Are creds being rotated?\n
Are you in the allowed IP range?\n"}
      Enum.any?(["test", "tests"], fn x -> x in separated end) ->
        {:ok, "Is the test environment configuration correct?\n
Is your test or fixture data affecting your test scenarios?\n
Are the requests being stubbed?\n"}
      Enum.any?(["method", "function"], fn x -> x in separated end) ->
        {:ok, "Are the received parameters correct?\n
Are the parameters being modified?\n"}
      Enum.any?(["inheritance", "class", "object"], fn x -> x in separated end) ->
        {:ok, "Is the father class correct?\n
Are methods accesible by the child classes?\n
Are the inherited methods being overwritten?\n"}
      Enum.any?(["routes", "route", "endpoint"], fn x -> x in separated end) ->
        {:ok, "Are the routes defined?\n
Are routes accesible?\n"}
      Enum.any?(["var", "variables", "vars", "variables"], fn x -> x in separated end) ->
        {:ok, "Could the variables being overwritten?\n
Are the variables under the right scope?\n"}
      # wink wink the IT Crowd
      Enum.member?(separated, "nothing") ->
        {:ok, "Is your browser up to date?\n
What about a DNS issue?\n
Have You Tried Turning It Off And On Again?\n"}
      true ->
        {:ok, "cuak, I need more details.\n"}
    end
  end
end
