# aoc2025-ex

Minimal Elixir setup for Advent of Code 2025.

Run tests:

```bash
mix test
```

Run in IEx:

```bash
iex -S mix
```
Then:

``` elixir
input = AOC2025.Day01.parse( File.read! "inputs/day01.txt" )
AOC2025.Day01.part1(input)
```
