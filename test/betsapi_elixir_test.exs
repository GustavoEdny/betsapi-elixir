defmodule BetsapiElixirTest do
  use ExUnit.Case
  doctest Betsapi

  test "greets the world" do
    assert Betsapi.hello() == :world
  end
end
