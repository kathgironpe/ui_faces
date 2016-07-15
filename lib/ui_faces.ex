defmodule UiFaces do
  @moduledoc """
  UiFaces is an API client for Elixir applications.
  If you want to learn more about how UiFaces works internally, take a look
  at:

  - `UiFaces.API`
  - `UiFaces.Face`
  """

  def config(key) do
    Application.get_env(:ui_faces, key)
  end
end
