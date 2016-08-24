defmodule UiFaces.API do
  use HTTPotion.Base

  def process_url(url) do
    base_url <> url
  end

  def process_response_body(body) do
    body |> Poison.decode!
  end

  defp base_url do
    "http://uifaces.com/api/v1/"
  end
end
