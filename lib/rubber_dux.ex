defmodule RubberDux do

  def process(params) do
    separated = String.split(params, " ")
    if "test" in separated do
      IO.puts("yes")
    end
    answer_question(separated)
    # case separated do
    #   Enum.member?(separated, "test") -> 
    #     {:ok, "Is the test environment configuration correct?"}
      
    # end
  end

  def answer_question(question) when "test" in question, do: {:ok, "Is the test environment configuration correct?"}
  def answer_question(_), do: {:ok, "we are over"}


end