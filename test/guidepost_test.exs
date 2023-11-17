defmodule GuidepostTest do
  use ExUnit.Case
  doctest Guidepost

  test "greets the world" do
    assert Guidepost.hello() == :world
  end
end
