defmodule Phoenix.LiveDashboard.Plugin.ExampleTest do
  use ExUnit.Case
  doctest Phoenix.LiveDashboard.Plugin.Example

  test "greets the world" do
    assert Phoenix.LiveDashboard.Plugin.Example.hello() == :world
  end
end
