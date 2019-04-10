defmodule RubberDux.CLI do
  def main(args) do
    args |> process_args
  end

  @commands %{
    "just type your question here" => "receives a question, provide an answer"
  }

  def process_args(_) do
    IO.puts("What is happening with your code dude?")
    print_help_message()
    receive_command()
  end

  # Private functions

  defp receive_command do
    IO.gets("> ")
    |> String.trim
    |> String.downcase
    |> execute_command
  end

  defp print_help_message do
    IO.puts("\nRubber Dux supports following commands:\n")
    @commands
    |> Enum.map(fn({command, description}) -> IO.puts("  #{command} - #{description}") end)
  end

  defp execute_command(params) do
    {:ok, answer} = RubberDux.ask(params)
    IO.puts(answer)
    receive_command
  end

  

end