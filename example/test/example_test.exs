defmodule ExampleTest do
  use ExUnit.Case, async: true
  doctest Example

  # setup_all is called once for the test module
  setup_all do
    IO.puts("Running setup_all step")
    [recipient: :world]
  end

  # "setup" is called before each test
  setup do
    IO.puts("Running setup step")

    on_exit(fn ->
      IO.puts("This is invoked once the test is done. Process: #{inspect(self())}")
    end)

    # Returns extra metadata to be merged into context.
    # Any of the following would also work:
    #
    #     {:ok, %{hello: "world"}}
    #     {:ok, [hello: "world"]}
    #     %{hello: "world"}
    #
    [hello: "world"]
  end

  setup do
    IO.puts("Another setup step yay!")
    # This will not update the context
    :ok
  end

  describe "hello" do
    test "greets the world" do
      assert Example.hello() == :world
    end

    test "doesn't sound like a police officer" do
      refute Example.hello() == :ello
    end

    test "Demo-ing use of state from setup_all step", state do
      IO.inspect(state, label: "STATE IS:")
    end
  end
end
