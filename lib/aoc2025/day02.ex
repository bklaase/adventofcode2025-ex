defmodule AOC2025.Day02 do
  @moduledoc """
  Advent of Code 2025 - Day 2
  """

  # solutions
  def parse(data) do
    data
    |> String.split(",", trim: true)
    |> Enum.map(&(String.trim/1))
    |> Enum.map(
      fn(row) ->
        String.split(row, "-")
      |> Enum.map(&(String.to_integer/1))
      end)
  end

  def part1(input) do
    input
    |> Enum.flat_map(&(genRange/1))
    |> Enum.filter(&(isInvalidId?/1))
    |> Enum.sum()
  end

  def part2(input) do
    input
  end

  # parsing

  # part 1
  def genRange(row) do
    [start,stop] = row
    Enum.to_list(start..stop)
  end

  def isInvalidId?(id) do
    strId = Integer.to_string(id)
    length = String.length(strId)
    cond do
      Integer.mod(length, 2) != 0 -> false
      true -> {a,b} = String.split_at(strId, div(length, 2)); a == b
    end
  end

  # part 2

end
