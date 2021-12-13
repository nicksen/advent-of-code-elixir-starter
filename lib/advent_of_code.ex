defmodule AdventOfCode do
  def __using__(opts \\ []) do
    quote do
      import AdventOfCode.InputHelpers
    end
  end
end
