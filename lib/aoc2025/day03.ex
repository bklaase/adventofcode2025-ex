defmodule AOC2025.Day03 do
  @moduledoc """
  Advent of Code 2025 - Day 03
  """

  # solutions
  def parse(data) do
    data
    |> String.split("\n", trim: true)
  end

  def part1(input) do
    input
    |> Stream.map(&(getJoltage/1))
    |> Stream.map(&(String.to_integer/1))
    |> Enum.sum

  end

  def part2(input) do
    input
  end

  # parsing

  # part 1
  def getJoltage(line) do
    {char1, pos} = getHighestFromSubString(line,0,-2)
    {char2, _}= getHighestFromSubString(line, pos+1)
    char1 <> char2
  end

  def getHighestFromSubString(str, start, till \\ -1) do
    String.graphemes(str)
    |> Enum.slice(start..till//1)
    |> Enum.with_index()
    |> Enum.max_by(fn ({c,_n}) -> c end)

  end

  # part 2

end
