defmodule UiFaces.API do
  use HTTPotion.Base

  @moduledoc """
  API is an HTTPotion wrapper.
  """

  def process_url(url) do
    base_url <> url
  end

  def process_response_body(body) do
    Poison.decode!(body)
  end

  defp base_url do
    "http://uifaces.com/api/v1/"
  end
end
