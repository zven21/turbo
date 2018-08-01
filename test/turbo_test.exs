defmodule TurboTest do
  use ExUnit.Case
  doctest Turbo

  test "greets the world" do
    assert Turbo.hello() == :world
  end
end
