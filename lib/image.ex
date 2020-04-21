defmodule Identicon.Image do
  # The sole purpose of this module is to manage our Struct, which is going to hold of the data we need in the
  # application in a single data structure

  defstruct hex: nil, color: nil, grid: nil, pixel_map: nil
end
