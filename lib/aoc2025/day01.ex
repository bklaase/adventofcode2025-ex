defmodule AOC2025.Day01 do
  @moduledoc """
  Advent of Code 2025 - Day 1
  """

  def part1(input) do
    input
    |> applyInstructions(50)
    |> Enum.filter(&(&1 == 0))
    |> Enum.count

  end

  def part2(input) do
    input
    |> solve_part2()
  end

  def parse(data) do
    data
    |> String.split("\n", trim: true)
    |> Enum.map(&parseValue/1)
  end

  # parsing
  def parseValue(line) do
    String.split_at(line, 1)
    |> signedValue()
  end

  def signedValue({"L",strVal}), do: -1* String.to_integer(strVal)
  def signedValue({"R",strVal}), do: String.to_integer(strVal)

  # part 1
  # objective: count number of times the dial reaches '0' given
  # startposition of '50'.
  def applyInstructions(instructions, startValue) do
    Enum.scan(instructions, startValue,
              fn(elt, acc) -> Integer.mod(elt+acc,100) end)
  end

  # part 2
  # objective: count number of times the dial CROSSES '0' given
  # startposition of '50'. So multiple rotations, cause multiple passings.
  defp solve_part2(input), do: Enum.max(input)
end
