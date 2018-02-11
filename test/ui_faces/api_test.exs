defmodule UiFaces.APITest do
  use ExUnit.Case

  describe "process_url" do
    test "returns a url" do
      url = UiFaces.API.process_url("random")
      assert url == "http://uifaces.com/api/v1/random"
    end
  end

  doctest UiFaces.API
end
