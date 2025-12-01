defmodule AOC2025Ex.Day01 do
  @moduledoc """
  Advent of Code 2025 - Day 1
  """

  def part1(input) do
    input
    |> parse()
    |> solve_part1()
  end

  def part2(input) do
    input
    |> parse()
    |> solve_part2()
  end

  defp parse(input) do
    input
    |> String.split("\n", trim: true)
    |> Enum.map(&String.to_integer/1)
  end

  defp solve_part1(data), do: Enum.sum(data)
  defp solve_part2(data), do: Enum.max(data)
end
