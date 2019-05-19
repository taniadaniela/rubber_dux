defmodule RubberDux.Mixfile do
  use Mix.Project

  def project do
    [
      app: :rubber_dux,
      version: "0.0.1",
      elixir: "~> 1.7",
      start_permanent: Mix.env == :prod,
      deps: deps(),
      escript: escript()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_doc, only: :dev, runtime: false},
      {:credo, "~> 1.0.0", only: [:dev, :test], runtime: false}
    ]
  end

  defp escript do
    [main_module: RubberDux.CLI]
  end
end
