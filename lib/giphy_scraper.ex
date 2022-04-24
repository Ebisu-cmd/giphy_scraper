defmodule GiphyScraper do
  def search(query) do
    query
    |> construct_giphy_search_url_endpoint
    |> issue_get_request
    |> process_get_response
  end

  defp construct_giphy_search_url_endpoint(query) do
    "api.giphy.com/v1/gifs/search?api_key=1CQoxaod6AB5n4ttMEFd9HhqlGkjzvdt&limit=25&q=" <> query
  end

  defp issue_get_request(url) do
    HTTPoison.get!(url)
  end

  defp process_get_response(response) do
    parsed_body = Jason.decode!(response.body, [{:keys, :atoms}])
    Enum.map(parsed_body.data, &parse_gif_object/1)
  end

  defp parse_gif_object(gif_object) do
    %GiphyImage{id: gif_object[:id], url: gif_object[:url], username: gif_object[:username], title: gif_object[:title]}
  end
end
