defmodule AOC2025.Day01Test do
  use ExUnit.Case
  alias AOC2025.Day01

  @sample_input [-68, -30, 48, -5, 60, -55, -1, -99, 14, -82]

  test "part 1" do
    assert Day01.part1(@sample_input) == 3
  end

  test "part 2" do
    assert Day01.part2(@sample_input) == 6
  end

  test "zeroPasses helper" do
    assert Day01.zeroPasses(50, 49) == 0
    assert Day01.zeroPasses(50, 50) == 1
    assert Day01.zeroPasses(50, 150) == 2
    assert Day01.zeroPasses(50, -50) == 1
    assert Day01.zeroPasses(0, -5) == 0
  end
  
end
