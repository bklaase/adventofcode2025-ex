defmodule AOC2025Ex.MixProject do
  use Mix.Project

  def project do
    [
      app: :aoc2025_ex,
      version: "0.1.0",
      elixir: "~> 1.19",
      start_permanent: Mix.env() == :prod,
      deps: []
    ]
  end

  def application do
    []
  end
end
