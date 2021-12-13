defmodule AdventOfCode.InputHelpers do
  def lines(input), do: split(input, "\n")

  def as_ints(lines) do
    Enum.map(lines, &String.to_integer/1)
  end

  def split(input, on, opts \\ [])

  def split(input, on, parts) when is_number(parts) do
    split(input, on, parts: parts)
  end

  def split(input, on, opts) do
    input
    |> String.split(on, Keyword.merge([trim: true], opts))
    |> Enum.map(&String.trim/1)
  end
end
