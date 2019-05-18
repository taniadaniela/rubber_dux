defmodule RubberDux do
  def process(params) do
    separated = String.split(params, " ")
    cond do
      Enum.any?(["webhook", "webhooks"], fn x -> x in separated end) ->
        {:ok, "Are the IPs being whitelisted? \nAre the creds being rotated?"}
      Enum.any?(["test", "tests"], fn x -> x in separated end) ->
        {:ok, "Is the test environment configuration correct?"}
      Enum.any?(["inheritance", "class", "object"], fn x -> x in separated end) ->
        {:ok, "Is the father class correct? \nAre the methods accesible by the child classes?"}
      Enum.any?(["routes", "route", "endpoint"], fn x -> x in separated end) ->
        {:ok, "Are the routes defined? \nAre routes accesible?"}
      Enum.any?(["var", "variables", "vars", "variables"], fn x -> x in separated end) ->
        {:ok, "Could the variables being overwritten? \nAre the variables under the rigth scope?"}
      # wink wink the IT Crowd  
      Enum.member?(separated, "nothing") ->
        {:ok, "Is your browser up to date? \nWhat about a DNS issue? \nHave You Tried Turning It Off And On Again?"}
      true ->
        {:ok, "cuak"}  
    end
  end
end