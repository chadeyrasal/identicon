defmodule Identicon do
  # A Struct is like a map that is used to hold data in an Elixir application
  # It has two advantages compared to a map: it can be given default values, and has additional compile time checks

  def main(input) do
    input
    |> hash_input()
    |> pick_color()
  end

  @spec pick_color(Identicon.Image.t()) :: [...]
  def pick_color(%Identicon.Image{hex: [r, g, b | _tail]} = image) do
    %Identicon.Image{image | color: {r, g, b}}
  end

  def hash_input(input) do
    hex =
      :crypto.hash(:md5, input)
      |> :binary.bin_to_list()

    %Identicon.Image{hex: hex}
  end
end
