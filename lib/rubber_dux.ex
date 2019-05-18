defmodule RubberDux do

  def process(params) do
    separated = String.split(params, " ")
    cond do
      Enum.any?(["webhook", "webhooks"], fn x -> x in separated end) ->
        {:ok, "Are the IPs being whitelisted? \nAre the creds being rotated?"}
      Enum.any?(["test", "tests"], fn x -> x in separated end) ->
        {:ok, "Is the test environment configuration correct?"}
      Enum.any?(["heritance", "class", "object"], fn x -> x in separated end) ->
        {:ok, "Is the father class correct? \nAre the methods accesible by the child classes?"}
      true ->
        {:ok, "cuak"}  
    end
  end
end