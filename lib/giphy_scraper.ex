defmodule GiphyScraper do

  def search(query) do
    query
    |> construct_GIPHY_search_url_endpoint
    |> issue_get_request
    |> process_get_response
  end

  defp construct_GIPHY_search_url_endpoint(query) do
    "api.giphy.com/v1/gifs/search?api_key=1CQoxaod6AB5n4ttMEFd9HhqlGkjzvdt&limit=1&q=" <> query
  end

  defp issue_get_request(url) do
    HTTPoison.get!(url)
  end

  defp process_get_response(response) do
    response.body
  end

end
