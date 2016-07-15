defmodule UiFaces.API do
  use HTTPotion.Base

  def process_url(url) do
    "http://uifaces.com/api/v1/" <> url
  end

  def process_request_headers(headers) do
    headers ++ [
      {"Accept", "application/json"}
    ]
  end

  def process_response_body(body) do
    body |> Poison.decode!
  end
end
