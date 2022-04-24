defmodule GiphyScraper do

  def search(query) do
    query
    |> construct_GIPHY_search_url_endpoint
    |> issue_get_request
    |> process_get_response
  end

  defp construct_GIPHY_search_url_endpoint(query) do
    "api.giphy.com/v1/gifs/search?api_key=1CQoxaod6AB5n4ttMEFd9HhqlGkjzvdt&limit=25&q=" <> query
  end

  defp issue_get_request(url) do
    case HTTPoison.get(url) do
      {:ok, response} -> response.body
      #add processing for get request errors {:error, error}
    end
  end

  defp process_get_response(body) do

  end

end
