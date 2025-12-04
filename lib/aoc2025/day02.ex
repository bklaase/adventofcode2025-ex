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
    |> Enum.flat_map(&(genRange/1))
  end

  def part1(input) do
    input
    |> Enum.filter(&(isInvalidId?/1))
    |> Enum.sum()
  end

  def part2(input) do
    input
    |> Enum.filter(&(isInvalidId2?/1))
    |> Enum.sum()
  end

  # parsing
  def genRange(row) do
    [start,stop] = row
    Enum.to_list(start..stop)
  end

  # part 1
  def isInvalidId?(id) do
    strId = Integer.to_string(id)
    length = String.length(strId)
    cond do
      Integer.mod(length, 2) != 0 -> false
      true -> {a,b} = String.split_at(strId, div(length, 2)); a == b
    end
  end

  # part 2
  def isInvalidId2?(id) do
    strId = Integer.to_string(id)
    divisors = getDivisors(strId)
    Enum.any?(divisors, fn(n) ->
      [first | rest ] = chunkString(strId, n)
      Enum.all?(rest, &(first == &1))
    end)
    
  end
  def getDivisors(strId) do
    divMap = %{ 1 => [], 2 => [1], 3 => [1], 4 => [1, 2], 5 => [1],
      6 => [1,2,3], 7 => [1], 8 => [1, 2, 4], 9 => [1, 3], 10 => [1,2,5]}

    divMap[String.length(strId)]
  end

  def chunkString(str, chunkSize) do
    String.graphemes(str) |> Enum.chunk_every(chunkSize)
  end

end
