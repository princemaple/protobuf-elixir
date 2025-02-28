Code.require_file("../support/test_msg.ex", __DIR__)
defmodule Protobuf.BuilderTest do
  use ExUnit.Case, async: true

  test "new/2 uses default values for proto3" do
    assert TestMsg.Foo.new.a == 0
    assert TestMsg.Foo.new.c == ""
    assert TestMsg.Foo.new.e == nil
  end

  test "new/2 use nil for proto2" do
    assert TestMsg.Foo2.new.a == nil
    assert TestMsg.Foo2.new.c == nil
    assert TestMsg.Foo2.new.e == nil
  end
end
