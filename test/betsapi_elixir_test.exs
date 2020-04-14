defmodule BetsapiElixirTest do
  use ExUnit.Case
  doctest BetsapiElixir

  test "greets the world" do
    assert BetsapiElixir.hello() == :world
  end
end
