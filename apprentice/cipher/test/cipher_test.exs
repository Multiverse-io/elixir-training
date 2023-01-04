defmodule CipherTest do
  use ExUnit.Case
  doctest Cipher

  test "greets the world" do
    assert Cipher.hello() == :world
  end
end
