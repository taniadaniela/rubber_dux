defmodule RubberDux.CLI do
  @moduledoc false
  @duckie "
      __
    <(o )___
    ( ._> /
     `---'"

  def main(args) do
    args |> process_args
  end

  def process_args(_) do
    IO.puts("Tell the duckie what is happening with your code:")
    IO.puts(@duckie)
    receive_command()
  end

  # Private functions

  defp receive_command do
    IO.gets("> ")
    |> String.trim
    |> String.downcase
    |> execute_command
  end

  defp execute_command(params) do
    {:ok, answer} = RubberDux.process(params)
    IO.puts(answer)
    receive_command
  end

end
