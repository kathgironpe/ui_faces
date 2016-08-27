defmodule UiFaces.Face do
  alias UiFaces.API

  @moduledoc """
     Get random authorized user and an authorized user by Twitter username.

  ## Examples

      # Returns a random authorized user

      UiFaces.Face.random

      # Returns an authorized user
      UiFaces.Face.user("calebogden")

  """

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
