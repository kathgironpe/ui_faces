defmodule UiFaces.FaceTest do
  use ExUnit.Case, async: false
  use ExVCR.Mock

  describe "random" do
    test "get random face" do
      use_cassette "random_face" do
        req = UiFaces.Face.random
        res = req.body
        assert res["image_urls"]["epic"] =~ ~r/https:\/\/s3.amazonaws.com\/uifaces\/faces/
        assert res["image_urls"]["normal"] =~ ~r/https:\/\/s3.amazonaws.com\/uifaces\/faces/
      end
    end
  end

  describe "user" do
    test "get authorized user" do
      use_cassette "user" do
        req = UiFaces.Face.user("calebogden")
        res = req.body
        assert res["username"] == "calebogden"
        assert res["image_urls"]["epic"] =~ ~r/https:\/\/s3.amazonaws.com\/uifaces\/faces/
        assert res["image_urls"]["normal"] =~ ~r/https:\/\/s3.amazonaws.com\/uifaces\/faces/
      end
    end
  end

  doctest UiFaces.Face
end
