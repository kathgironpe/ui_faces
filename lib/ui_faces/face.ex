defmodule UiFaces.Face do
  alias UiFaces.API

  @doc """
  Returns a random authorized user

  ## Examples

      iex> UiFaces.Face.random
  """

  def random do
    API.get("random", [timeout: UiFaces.config(:timeout)]).body
  end

  @doc """
  Returns an authorized user

  ## Examples

      iex> UiFaces.Face.user("calebogden")
  """
  def user(username) do
    API.get("user/#{username}", [timeout: UiFaces.config(:timeout)]).body
  end
end
