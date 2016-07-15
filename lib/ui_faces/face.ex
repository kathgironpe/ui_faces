defmodule UiFaces.Face do
  alias UiFaces.API

  @doc """
  Returns a random authorized user

  UiFaces.Face.random
  """
  def random do
    API.get("random").body
  end

  @doc """
  Returns an authorized user

  UiFaces.Face.user("calebogden")
  """
  def user(username) do
    API.get("user/#{username}").body
  end
end
