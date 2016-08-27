defmodule UiFaces.Face do
  alias UiFaces.API

  @doc """
  Returns a random authorized user

  ## Examples

      UiFaces.Face.random
  """

  def random do
    API.get("random")
  end

  @doc """
  Returns an authorized user

  ## Examples

      UiFaces.Face.user("calebogden")
  """
  def user(username) do
    API.get("user/#{username}")
  end
end
