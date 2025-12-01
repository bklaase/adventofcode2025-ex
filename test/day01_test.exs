defmodule AOC2025.Day01Test do
  use ExUnit.Case
  alias AOC2025.Day01

  @sample_input "1\n2\n3"

  test "part 1" do
    assert Day01.part1(@sample_input) == 6
  end

  test "part 2" do
    assert Day01.part2(@sample_input) == 3
  end
end
