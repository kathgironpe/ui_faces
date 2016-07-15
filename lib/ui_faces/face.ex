defmodule UiFaces.Face do
  alias UiFaces.API

  @doc """
  Return a random authorized user

  UiFaces.Face.random
  """

  def random do
    API.get("random").body
  end

end
