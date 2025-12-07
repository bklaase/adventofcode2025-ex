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
    |> Stream.map(&(getRecursiveJoltage(&1, 12)))
    |> Stream.map(&(String.to_integer/1))
    |> Enum.sum
  end

  # parsing

  # part 1
  # made redundant by the part2 version"
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
  def getRecursiveJoltage(batts, remaining, result \\ "")
  def getRecursiveJoltage(batts, 1, result) do
    {char, _} = getHighestFromSubString(batts,0)
    result <> char
  end
  def getRecursiveJoltage(batts, remaining, result) do
    {char, pos} = getHighestFromSubString(batts, 0, -remaining)
    newResult = result <> char
    newBatts = String.slice batts, pos+1..-1//1
    getRecursiveJoltage(newBatts, remaining-1, newResult)
  end

end
