defmodule DaisyUiTest do
  use ExUnit.Case
  doctest DaisyUi

  test "greets the world" do
    assert DaisyUi.hello() == :world
  end
end
